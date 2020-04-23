require "pry"

class CashRegister
    attr_accessor :total, :discount, :last_transaction

    def initialize(discount=0)
    @total = 0
    @discount = discount
    @all = []
    end

    def add_item(title, price, quantity = 1)
        @total += (price * quantity)
        quantity.times do
            @all << title
        end
        @last_transaction = (price * quantity)
    end

    def apply_discount
        @total = (@total - (@total * (discount.to_f/100)))
        if @discount > 0
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = (self.total - self.last_transaction)
        end

    def items
        @all
    end
end