class Change < ActiveRecord::Migration[5.2]
  def change
    remove_column :quotes,:phone_number,:string

  end
end
