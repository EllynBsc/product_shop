class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favorites
  has_many :products, through: :favorites
  has_one :cart

  after_create :set_cart

  def set_cart
    Cart.create(user_id: self.id)
  end

end
