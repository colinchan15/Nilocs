class LineItem < ApplicationRecord
  belongs_to :cube
  belongs_to :cart
end
