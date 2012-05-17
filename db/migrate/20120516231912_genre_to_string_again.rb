class GenreToStringAgain < ActiveRecord::Migration
  def up
    add_column :vendors, :genre, :string
  end

  def down
  end
end
