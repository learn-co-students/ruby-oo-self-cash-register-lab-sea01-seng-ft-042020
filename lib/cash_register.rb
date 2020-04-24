require 'pry'

class CashRegister

    attr_accessor :total, :discount, :last_trans
    attr_reader :items

    def initialize ( discount = 0 )
        @total = 0
        @discount = discount
        @items = []
        @last_trans = 0
    end

    def add_item ( title , price , quantity = 1 )
        @total += ( price * quantity )
        @last_trans = ( price * quantity )
        if quantity > 1
            count = 0
            while count < quantity
                @items << title
                count += 1
            end
        else
            @items << title
        end
    end

    def apply_discount
        if @discount != 0
            @total = @total - (@total * (discount.to_f / 100))
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        # binding.pry
        @total -= self.last_trans
    end
end