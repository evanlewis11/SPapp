class CreateViewers < ActiveRecord::Migration
  def change
    create_table :viewers do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
