### Creating calculator if not created before
Spree::TravelCalculator.where(:name => 'Spree::CalculatorTour').first_or_create(:product_type => Spree::ProductType.find_by_name('tour'))
