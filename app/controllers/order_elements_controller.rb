class OrderElementsController < ApplicationController
  before_action :set_params, only: [:create]


  def create
    @order_element = OrderElement.new(set_params)

    if !Order.exists?(user_id: current_user.id)
      @order = Order.new
      @order.user_id = current_user.id
      @order.status_id = 1
      @order.discount = 0
      @order.save
    end

    @order_element.order_id = Order.where(:user_id => current_user.id, :status => 1).first!.id
    @order_element.count = 1
    @order_element.price = Product.find(@order_element.product_id).price
    @order_element.discount = 0

    respond_to do |format|
      if @order_element.save
        format.html { redirect_to @order_element, notice: 'Product added to cart.' }
        format.json { render :show, status: :created, location: @order_element }
      else
        format.html { render :tmp }
        format.json { render json: @order_element.errors, status: :unprocessable_entity }
      end
    end
  end

  def tmp
  end

  def show
  end

  private
  def set_params
    params.require(:order_element).permit(:product_id)
  end

end
