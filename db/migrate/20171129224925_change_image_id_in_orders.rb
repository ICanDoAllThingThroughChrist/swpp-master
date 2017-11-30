class ChangeImageIdInOrders < ActiveRecord::Migration[5.1]
  def change
  	change_table :orders do |t|
  	t.rename :image_id, :upload_id
  	end
  end
end
