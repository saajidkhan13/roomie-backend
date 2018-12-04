class RemoveTypeFromBills < ActiveRecord::Migration[5.2]
  def change
    remove_column :bills, :type, :string
  end
end
