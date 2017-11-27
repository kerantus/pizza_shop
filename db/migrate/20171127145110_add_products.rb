class AddProducts < ActiveRecord::Migration[5.1]
  def change
    
    Product.create :title => 'ostraya',
                   :description => 'This is pizza on very ostraya',
                   :price => 550,
                   :size => 33,
                   :is_spicy => true,
                   :is_veg => false,
                   :is_best_offer => false,
                   :path_to_image => '/images/ostraya.jpg'

    Product.create :title => 'ostraya',
                   :description => 'This is pizza on very ostraya',
                   :price => 800,
                   :size => 40,
                   :is_spicy => true,
                   :is_veg => false,
                   :is_best_offer => false,
                   :path_to_image => '/images/ostraya.jpg'


    Product.create :title => 'vegan',
                   :description => 'This is pizza on very ostraya',
                   :price => 500,
                   :size => 40,
                   :is_spicy => false,
                   :is_veg => true,
                   :is_best_offer => false,
                   :path_to_image => '/images/vegan.jpg'

  end
end
