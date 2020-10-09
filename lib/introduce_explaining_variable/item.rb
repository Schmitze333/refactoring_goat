module IntroduceExplainingVariable
  class Item
    def initialize(quantity, price)
      @quantity = quantity
      @item_price = price
    end

    def price
      [0, @quantity - 500].max * @item_price * 0.05 +
        [@quantity * @item_price * 0.1, 100.0].min
    end
  end
end
