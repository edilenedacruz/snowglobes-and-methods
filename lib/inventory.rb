require 'pry'
require_relative 'order'
class Inventory
  attr_reader :sheet
  def initialize
    @sheet = Hash.new{0}
  end

  def add_snowglobe_to_inventory(snowglobe, quantity)
    sheet[snowglobe.type] += quantity
  end

  def adjust_inventory(order)
    sheet[order.type] -= order.quantity
  end

  def restock_inventory
    sheet.map { |k,v| sheet[k] = 42 }
  end
end
