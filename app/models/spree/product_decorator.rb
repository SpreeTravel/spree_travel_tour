module Spree
  Product.class_eval do

    def tour?
      self.product_type == Spree::ProductType.find_by_name('tour')
    end
    
    def self.tours
      where(product_type_id: Spree::ProductType.find_by_name('tour').id )
    end

  end
end
