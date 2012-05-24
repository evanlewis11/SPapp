class AddColumnsToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :email, :string
    add_column :vendors, :password_digest, :string
    rename_column :vendors, :bio, :description
    add_column :vendors, :category_id, :integer
    add_column :vendors, :logo, :string
  end
end
