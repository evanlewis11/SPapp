class ChangeGenreToString < ActiveRecord::Migration
  def up
    remove_column :vendors, :genre
  end

  def down
  end
end
