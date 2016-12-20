class ProfileController < ApplicationController
  before_action :authenticate_user!

  def step2
    @user = current_user

    @order = current_user.order
    @order_items = @order.order_items
    #@products = Product.paginate(:page => params[:page], :per_page => 4)
    @products = Product.paginate(:page => params[:page], :per_page => 4)

    @rifle = Product.select([:caliber]).group(:caliber).where(prod_type: 'Rifle')
    @rimfire = Product.select([:caliber]).group(:caliber).where(prod_type: 'Rimfire')
    @shotgun = Product.select([:caliber]).group(:caliber).where(prod_type: 'Shotgun')
    @pistol = Product.select([:caliber]).group(:caliber).where(prod_type: 'Pistol')
  end

  def step3
    @user = current_user
    @order = current_user.order
    @order_items = @order.order_items
    @profile = current_user.profile
    @order = current_user.order
  end

end
