class AddProduct < ActiveRecord::Migration[5.0]
def change

	Product.create :title => 'Hawaiian', :description => 'This is just hawaiian pizza', :price => 350, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_image => '/images/hawaii.jpg'

  	 Product.create :title =>'Pepperoni', :description => 'Nice pepperoni pizza', :price => 450, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => true, :path_to_image => '/images/pepper.jpg'

  

  end
end