class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :address
      t.date :lease_start
      t.date :lease_end
      t.string :landlord_name
      t.string :landlord_contact
      t.string :events
      t.string :necessities
      t.string :chores

      t.timestamps
    end
  end
end
