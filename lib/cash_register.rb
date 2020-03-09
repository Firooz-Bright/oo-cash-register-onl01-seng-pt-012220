class CashRegister
  attr_accessor :total, :discount, :items ,:last_transaction_amount
  
   def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title,price,quantity=1)
    
    for i in 1..quantity
       @items << title
    end 
    
       @total+= price * quantity
       @last_transaction_amount = price*quantity
         return @total
         return @items
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
    
    @total = @total - @last_transaction_amount
   
  end
   
 
end 
