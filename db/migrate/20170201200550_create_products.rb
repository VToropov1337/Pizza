class CreateProducts < ActiveRecord::Migration[5.0]
  def change
  		create_table :products do |item|
  			item.string :title
  			item.text :description
  			item.decimal :price
  			item.decimal :size
  			item.boolean :is_spicy
  			item.boolean :is_veg
  			item.boolean :is_best_offer
  			item.string :path_to_image





  			item.timestamps
  		end
  end
end
