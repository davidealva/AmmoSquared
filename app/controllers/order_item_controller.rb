class OrderItemController < ApplicationController

  def create
    id = params[:id]
    @order = current_user.order
    @order_item = @order.order_items.create(product_id: id)
    @order.save
    flash[:notice] = "You have added the item to your order..."
    redirect_to current_user.order
  end

  def delete
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
