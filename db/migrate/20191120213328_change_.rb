class Change < ActiveRecord::Migration[5.2]
  def change
    change_column :quotes,:phone_number,:string

  end
end
