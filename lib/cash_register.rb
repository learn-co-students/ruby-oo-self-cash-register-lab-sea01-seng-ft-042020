require 'pry'

class CashRegister

    
    attr_accessor :total, :items, :transactions
    attr_reader :discount

    
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @transactions = []
        
    end

    def add_item(item, price, quantity=1)
        @total += price * quantity
        
        quantity.times {@items << item}

        @transactions << price
    end


    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
        discount = (@discount.to_f / 100)
        @total -= @total * discount
        @total = @total.to_i
        "After the discount, the total comes to $#{@total}." 
        end
        
    end


    def void_last_transaction
        @total -= @transactions[-1]
        @transactions.pop
        if @transactions == []
            @total = 0.0
        end
        
    end

        
binding.pry

end


