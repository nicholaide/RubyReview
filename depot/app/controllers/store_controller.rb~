
class StoreController < ApplicationController
  def index
	@products = Product.order(:title)
	increment_counter
  end
end
