class CashRegister
    attr_accessor :discount
    attr_writer :total

    def initialize(discount = 0)
      @discount = discount
      @total = 0
      @items = []
      @item_prices = []
    end
  
    def total
      @total
    end
  
    def add_item(title, price, quantity = 1)
    @quantity = quantity
      quantity.times do
        @items << title
        @item_prices << price.to_f
      end
      @total += price.to_f * quantity
    end
  
    def apply_discount
      if discount > 0
        total_discount = @discount.to_f / 100 * @total
        @total -= total_discount
        "After the discount, the total comes to $#{total.to_i}."
      else
        "There is no discount to apply."
      end
    end
  
    def items
      @items
    end
    def void_last_transaction
        last_price = @item_prices.pop
        @total -= last_price * @quantity
      end
  end
  
