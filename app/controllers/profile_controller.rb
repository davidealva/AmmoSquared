class ProfileController < ApplicationController
  before_action :authenticate_user!

  def step2
    @user = current_user
  end

  def step3
    @user = current_user
  end

  def profile
    @user = current_user
  end

end
