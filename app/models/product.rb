class Product < ApplicationRecord
  has_many :tags
  has_many :reviews
  has_many :order_items
  has_many :favorites
  has_many :users, through: :favorites
end
