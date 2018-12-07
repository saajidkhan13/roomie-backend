class Api::V1::BillsController < ApplicationController
  before_action :find_bill, only: [:update]
  # Don't need new or edit bc we don't need those html forms, our front end provides that
  # still need update tho bc we have to handle patch response
  def show
    @bill = Bill.find(params[:id])
    render json: @bill, status: 200
  end

  def update
    @bill.update(bill_params)
    if @bill.save
      render json: @bill, status: :accepted
    else
      render json: { errors: @bill.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def bill_params
    params.require(:bill).permit(:amount, :apartment_id, :image)
  end

  def find_bill
    @bill = Apartment.find(params[:id])
  end

end
