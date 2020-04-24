require 'pry'

class CashRegister

    attr_accessor :total, :discount, :quantity, :price

    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @quantity = quantity
        @items = []
    end


    def add_item (title, price, quantity =1)
        @price = price
        @quantity = quantity
        @total += price*quantity
        i = 0
        while i < quantity do 
            @items << title
            i+=1
        end
    end

    def items
        @items
    end

    def discount_amount
        @total *(@discount.to_f/100)
    end

    def apply_discount
        @total -= discount_amount
        if @discount != 0
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= (@price * @quantity)
    end


end


