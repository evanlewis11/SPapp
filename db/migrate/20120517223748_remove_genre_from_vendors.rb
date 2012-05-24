class RemoveGenreFromVendors < ActiveRecord::Migration
  def up
  end
  
  def down
    remove_column :vendors, :genre
  end
end
