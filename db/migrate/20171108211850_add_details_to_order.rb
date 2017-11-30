class AddDetailsToOrder < ActiveRecord::Migration[5.1]
  def change
      add_column :orders, :image_id, :string
      add_column :orders, :title, :string
  end
end
