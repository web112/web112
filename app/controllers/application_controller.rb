class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  dd
  def ddddcurrent_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    ddd
    cart
  end
end
