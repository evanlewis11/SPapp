class CreatePasses < ActiveRecord::Migration
  def change
    create_table :passes do |t|
      t.string :title
      t.datetime :availability_date
      t.text :description
      t.text :embed_code
      t.boolean :live_stream
      t.integer :vendor_id

      t.timestamps
    end
  end
end
