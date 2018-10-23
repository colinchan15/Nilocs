class LineItem < ApplicationRecord
  belongs_to :cube
  belongs_to :cart

  # getting total price given by the price of the rubik's cube in question * quant
  def total_price 
  cube.price.to_f * quantity.to_f
	end
end
