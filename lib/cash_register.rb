
# class CashRegister 
    
#     attr_reader :total, :discount

#     def initialize (discount = 0 )
       
#         @total = 0
#         @discount = discount
#     end

#     def add_item(item, price, quantity =1)
#        # @total += price * quantity
#        if quantity>1
#         i=0
#         while i<quantity
#           @items << title
#           i+=1
#         end
#       else
#         @items << title
#       end
#       @total += price*quantity
#       @last_transaction_amount = @total
#       @total
#     end

#     def apply_discount()
#         if @discount > 0
#           @discount = @discount/100.to_f
#           @total = @total - (@total * (@discount))
#           "After the discount, the total comes to $#{@total.to_i}."
#         else
#           "There is no discount to apply."
#         end
#       end
    
#       def void_last_transaction()
#         @total -= @last_transaction_amount
#       end

# end 

# class CashRegister 
    
#     attr_reader :total, :emp_discount

#     def initialize (emp_discount=0)
       
#         @total = 0
#         @emp_discount = emp_discount
#     end

#     def add_item (item, price, quantity)
#         @total += price * quantity
#     end

# end 

class CashRegister

    attr_accessor :total, :discount, :last_transaction_amount, :items
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end
  
  
    def add_item(title,price,quantity = 1)
      if quantity>1
        i=0
        while i<quantity
          @items << title
          i+=1
        end
      else
        @items << title
      end
      @total += price*quantity
      @last_transaction_amount = @total
      @total
    end
  
    def apply_discount()
      if @discount > 0
        @discount = @discount/100.to_f
        @total = @total - (@total * (@discount))
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
    end
  
  
    def void_last_transaction()
      @total -= @last_transaction_amount
    end
  
  end

cash_register = CashRegister.new(20)
cash_register.add_item("mango", 2, 3)
cash_register.total