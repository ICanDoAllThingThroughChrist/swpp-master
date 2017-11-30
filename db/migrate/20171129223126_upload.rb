class Upload < ActiveRecord::Migration[5.1]
  def change
  	create_table :uploads do |t|
  		t.string "title"
    	t.integer "order_id"
    	t.string :image_url
    	t.timestamps
    end
  end
end
