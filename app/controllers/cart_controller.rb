class CartController < ApplicationController

  def add
    # to add new book to cart
    id = params[:id]
    
    #if the cart is already created, use existing cart
    #else create new cart
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end
    
    #if book already in cart, increment value
    #else set the value to 1
    if cart[id] then
      cart[id] = cart[id] + 1
    else
      cart[id] = 1
    end
    
    #redirect to cart display page
    redirect_to :action => :index
    
  end
  
  def clearCart
    #end session by setting session variable to nil and redirect to cart display page
    session[:cart] = nil
    redirect_to :action => :index
  end
  
  
    
    
    
  def index
    #if there is a cart, go to diplay page
    #else pass an empty value
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end
  
  def empty?
      @books.empty?
  end
  
  def checkout
  end
  
  def payment
  end
  
end
