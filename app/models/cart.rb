class Cart < ApplicationRecord
  has_many :reviews
  has_many :cart_items
end
