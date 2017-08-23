# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :integer          not null, primary key
#  cat_id     :integer          not null
#  start_date :date
#  end_date   :date
#  status     :string           default("PENDING"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CatRentalRequest < ApplicationRecord
  validates :status, :cat_id, presence: true
  validates :status, inclusion: { in: %w(PENDING APPROVED DENIED) }
  validate :does_not_overlap_approved_requests

  def overlapping_requests
    if self.id
      CatRentalRequest
                      .where(cat_id: self.cat_id)
                      .where.not(id: self.id)
    else
      CatRentalRequest.where(cat_id: self.cat_id)
    end
  end

  def overlapping_approved_requests
    overlapping_requests.any? { |request| request.status == "APPROVED" }
  end

  def does_not_overlap_approved_requests
    errors.add(:base, 'Overlaps with other request') if overlapping_approved_requests
  end

  belongs_to :cat,
    class_name: :Cat,
    primary_key: :id,
    foreign_key: :cat_id
end
