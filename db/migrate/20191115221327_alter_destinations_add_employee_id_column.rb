class AlterDestinationsAddEmployeeIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :employee_id, :integer
    add_index :destinations, :employee_id
  end
end
