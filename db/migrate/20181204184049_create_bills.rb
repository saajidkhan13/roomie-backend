class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :name
      t.float :amount
      t.integer :apartment_id
      t.string :image

      t.timestamps
    end
  end
end
