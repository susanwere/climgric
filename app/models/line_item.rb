class LineItem < ApplicationRecord
  belongs_to :berry
  belongs_to :cart
end
