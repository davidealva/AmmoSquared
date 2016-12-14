class ProfileController < ApplicationController
  before_action :authenticate_user!

  def step2
    @user = current_user
    @products = Product.where(:caliber => params[:selected_cal]).paginate(:page => params[:page], :per_page => 4)
    #@products = Product.paginate(:page => params[:page], :per_page => 4)
    @rifle = Product.select([:caliber]).group(:caliber).where(prod_type: 'rifle')
    @rimfire = Product.select([:caliber]).group(:caliber).where(prod_type: 'rimfire')
    @shotgun = Product.select([:caliber]).group(:caliber).where(prod_type: 'shotgun')
    @pistol = Product.select([:caliber]).group(:caliber).where(prod_type: 'pistol')
  end

  def step3
    @user = current_user
    @profile = current_user.profile
    @subscription = current_user.subscription
  end

end
