class CartItemsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @cart = current_user.cart
    @cart_item = CartItem.new(cart_items_params)
    @cart_item.product = @product
    @cart_item.cart = @cart
    if @cart_item.save
      redirect_to cart_path(@cart)
    else
      render 'products/show', locals: { product: @product }
    end
  end



  private

  def cart_items_params
    params.require(:cart_item).permit(:quantity)
  end

end
