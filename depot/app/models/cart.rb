class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :cart_id
  has_many :line_items, dependent: :destroy
end
