class AddPriceToPass < ActiveRecord::Migration
  def change
    add_column :passes, :price, :float
  end
end
