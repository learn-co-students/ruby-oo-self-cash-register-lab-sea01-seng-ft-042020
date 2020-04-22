require "pry"
class CashRegister
    attr_accessor :total, :discount, :cart

    def initialize(employee_discount = 0.0)
        @total = 0.0 
        @discount = employee_discount
        @cart = []
    end

    def items
        self.cart.map {|item_array| [item_array[0]]*item_array[2]}.flatten                  # Should have used a hash to make this more clear
    end

    def add_item(item, price, quantity = 1)
        #quantity.times {self.cart.push([item, price])}
        self.cart.push([item, price, quantity])
        self.total += price * quantity
    end

    def apply_discount
        if self.discount == 0.0
            "There is no discount to apply."
        else
            self.total *= (100.0-self.discount)/100.0
            "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def void_last_transaction
        self.total -= self.cart[-1][1] * self.cart[-1][2]
        self.cart.pop
    end

end