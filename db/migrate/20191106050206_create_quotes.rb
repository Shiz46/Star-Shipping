class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :email 
      t.integer :phone_number
      t.string :destination
      t.text :description


      t.timestamps
    end
  end
end
