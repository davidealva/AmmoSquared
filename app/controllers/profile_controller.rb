class ProfileController < ApplicationController
  before_action :authenticate_user!

  def step2
    @user = current_user
  end

  def step3

  end

end
