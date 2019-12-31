class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :response
      t.integer :employee_id
      t.integer :quote_id
      t.timestamps
    end

    add_index :comments, [:employee_id, :quote_id]
    add_index :comments, :quote_id
  end
end
