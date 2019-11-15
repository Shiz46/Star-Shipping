class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :destinations, :place, :destination
  end
end
