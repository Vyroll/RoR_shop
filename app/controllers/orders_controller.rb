class OrdersController < ApplicationController

  def show

    if @order = Order.find_by(user_id: current_user.id)
     @order_elements = OrderElement.where(order_id: @order.id)
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end


end
