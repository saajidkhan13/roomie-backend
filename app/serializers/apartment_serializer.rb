class ApartmentSerializer < ActiveModel::Serializer
  has_many :users
  has_many :bills
  attributes :id, :name, :address, :lease_start, :lease_end, :landlord_name, :landlord_contact, :events, :necessities, :chores
end
