class Api::V1::ApartmentsController < ApplicationController
  before_action :find_apartment, only: [:update, :show]
  # Don't need new or edit bc we don't need those html forms, our front end provides that
  # still need update tho bc we have to handle patch response
  def index
    @apartments = Apartment.all
    render json: @apartments
  end

  def show
    @apartment = Apartment.find(params[:id])
    render json: @apartment, status: 200
  end

  def update
    @apartment.update(apartment_params)
    if @apartment.save
      render json: @apartment, status: :accepted
    else
      render json: { errors: @apartment.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def apartment_params

    params.require(:apartment).permit(:name, :address, :lease_start, :lease_end, :landlord_name, :landlord_contact, :events, :necessities, :chores)
  end

  def find_apartment
    @apartment = Apartment.find(params[:id])
  end

end # End of controller
