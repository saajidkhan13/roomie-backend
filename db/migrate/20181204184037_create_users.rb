class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :admin
      t.integer :apartment_id
      t.string :image
      t.string :associates

      t.timestamps
    end
  end
end
