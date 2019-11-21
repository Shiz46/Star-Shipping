class CreateEmployeeDestinations < ActiveRecord::Migration[5.2]
  def change
      create_table :employee_destinations do |t|
        t.integer :employee_id
        t.integer :destination_id

      t.timestamps
    end
  end
end
