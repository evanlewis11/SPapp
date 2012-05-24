class AddAvatarColumnstoVendor < ActiveRecord::Migration
  def self.up
    remove_column :vendors, :avatar_file_name
     remove_column :vendors, :avatar_content_type
     remove_column :vendors, :avatar_file_size
     remove_column :vendors, :avatar_updated_at
     change_table :vendors do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :vendors, :avatar
  end
end

