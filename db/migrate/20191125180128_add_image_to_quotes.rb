class AddImageToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :image, :string
  end
end
