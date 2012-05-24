class RemoveGenreAgain < ActiveRecord::Migration
  def change
    remove_column :vendors, :genre
  end
end
