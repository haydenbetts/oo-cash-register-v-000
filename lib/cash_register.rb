require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items

  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    @items << item
  end

  def apply_discount
    if discount
      self.total = self.total.to_f - (self.total.to_f * (discount.to_f / 100.0))
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items

  end

  def void_last_transaction
  end

end
