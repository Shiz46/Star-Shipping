class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :destination
      t.date :departure_date
      t.date :arrival_date
      t.string :vessel_name
      

      t.timestamps
    end
  end
end
