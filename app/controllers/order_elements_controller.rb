class OrderElementsController < ApplicationController
  before_action :set_params, only: [:create]


  def create
    @order_element = OrderElement.new(set_params)

    if Order.where(user_id: current_user.id).blank?
      @order = Order.new
      @order.user_id = current_user.id
      @order.shipping_id = 1
      @order.status_id = 1
      @order.discount = 0
      @order.address_id = 0
      @order.save
    end

    @order_element.order_id = Order.where(user_id: current_user.id, status_id: 1).first.id
    @order_element.count = 1
    @order_element.price = Product.find(@order_element.product_id).price
    @order_element.discount = 0

    if @order_element.save
      redirect_to order_show_path
    else
      render :tmp
    end
  end

  def tmp
  end

  private
  def set_params
    params.require(:order_element).permit(:product_id)
  end

end
