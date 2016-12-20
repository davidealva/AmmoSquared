class OrderController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.all
  end

  def show
    @order = current_user.order
    @order_items = @order.order_items
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:subtotal, :tax, :shipping, :bullet_weight, :total)
    end
end
