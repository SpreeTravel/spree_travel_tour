module Spree
  class CalculatorTour < BaseCalculator

    # TODo, ver esto aqui porque qiz'as es mejor passar directamente el rate.
    def calculate_price(context, product, variant, options)
      return [price:product.price.to_f] if product.rates.empty?
      # days = context.end_date.to_date - context.start_date.to_date rescue 1

      list = product.rates
      price = []
      list.each do |r|
        if Date.parse(r.start_date) <= Date.parse(context.start_date(options).to_s) &&
            Date.parse(r.end_date) >= Date.parse(context.end_date(options).to_s)
          price << {price:(context.adult(options).to_i * r.one_adult.to_i + context.child(options).to_i * r.one_child.to_i), rate:r.id}
        end
      end
      price

    end

  end
end
