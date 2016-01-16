module Spree
  Product.class_eval do

    def tour?
      self.product_type == Spree::ProductType.find_by_name('tour')
    end

  end
end
