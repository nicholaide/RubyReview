
class StoreController < ApplicationController
  
  skip_before_filter :authorize

  def index
	@products = Product.order(:title)
	increment_counter

        @cart = current_cart
  end
end
