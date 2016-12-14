class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :validate_user, only: [:show, :edit, :update, :destroy]


  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/1/edit
  def edit
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      #@profile = Profile.find(params[:id])
      @profile = current_user.profile
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:cust_number, :firstname, :lastname, :phone_number, :street1, :street2, :city, :state, :zip, :billing_street1, :billing_street2, :billing_city, :billing_state, :billing_zip, :account_credit, :last_shipment, :money_spent, :restricted, :shipping_zone, :lifetime_spent, :interval, :start_date)
    end

    def validate_user
      if current_user != Profile.find(params[:id]).user
        redirect_to root_path

      end
    end
end
