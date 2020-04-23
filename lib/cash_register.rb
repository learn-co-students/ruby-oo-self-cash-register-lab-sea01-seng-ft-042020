require 'pry'
class CashRegister
    attr_accessor :discount, :total, :items, :last
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    def add_item (title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            items << title
        end
        self.last = price * quantity
    end
    def apply_discount
        if discount != 0
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
        #We have to change discount to a float and 100 to 100.0
        #B.c once we divide by 100, it returns an integer, which is 0
        #we want the float. Returns 640.0 before to_i (don't need to_i except to pass test)
    "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
    end
end
def void_last_transaction
    self.total = self.total - self.last
end
    
end


