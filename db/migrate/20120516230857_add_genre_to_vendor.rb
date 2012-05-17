class AddGenreToVendor < ActiveRecord::Migration
  def up
    add_column :vendors, :genre, :integer
  end
  
  def down
  end
end
