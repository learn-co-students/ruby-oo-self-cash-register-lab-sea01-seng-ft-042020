class CashRegister
    attr_accessor :cash_register, :discount, :total, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        @item = item
        @price = price
        @quantity = quantity
        @total += price * quantity
        (1..quantity).each do |count|
            @items << item
        end
    end

    def apply_discount
        if @discount > 0
            @total = @total * (100 - @discount) / 100
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        (1..@quantity).each do |count|
            @total -= @price
            @items.pop
        end
    end
end