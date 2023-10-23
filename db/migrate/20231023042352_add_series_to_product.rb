class AddSeriesToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :series, :string
  end
end
