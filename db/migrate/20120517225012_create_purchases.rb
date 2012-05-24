class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :viewer_id
      t.integer :pass_id
      t.string :link

      t.timestamps
    end
  end
end
