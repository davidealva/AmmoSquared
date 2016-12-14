class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    # current_user.profile = Profile.new
    # current_user.subscription = Subscription.new
    '/step2' # Or :prefix_to_your_route
  end

end
