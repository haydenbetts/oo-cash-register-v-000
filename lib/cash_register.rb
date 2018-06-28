require 'pry'

class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = nil)
    @discount = discount
    @total = 0
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if discount
      self.total = self.total.to_f - (self.total.to_f * (discount.to_f / 100.0))
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

end
