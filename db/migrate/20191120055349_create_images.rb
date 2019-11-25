class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.integer :quote_id

      t.timestamps
    end

    add_index :images, [:user_id, :quote_id]
  end
end
