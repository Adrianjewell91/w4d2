class CatRentalRequestsController < ApplicationController
  def new
    @cat_rental_request = CatRentalRequest.new

    render :new
  end

  def create
    @cat_rental_request = CatRentalRequest.new(request_params)

    if @cat_rental_request.save
      redirect_to cat_rental_request_url(@cat_rental_request)
    else
      render json: @cat_rental_request.errors.full_messages
    end
  end

  def show
    @cat_rental_request = CatRentalRequest.find_by(id: params[:id])

    render :show
  end

  private

  def request_params
    params.require(:cat_rental_request).permit(:cat_id,
                                               :start_date,
                                               :end_date)
  end
end
