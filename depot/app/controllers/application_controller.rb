class ApplicationController < ActionController::Base
  protect_from_forgery

  #only available to controllers
  private
	
	def current_cart
	  Cart.find(session[:cart_id])
	rescue ActiveRecord::RecordNotFound
	  cart = Cart.create
	  session[:cart_id] = cart.id
	  #return new cart
	  cart
	end

	def increment_counter
  	  if session[:counter].nil?
	    session[:counter] = 0
       	  end
	  
          session[:counter] += 1
	end

end
