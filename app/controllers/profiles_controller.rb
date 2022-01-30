class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]
  # before_action :authenticate_user!, only: [:index, :show, :edit, :update, :destroy]

  # GET /profiles or /profiles.json
  def index

    # if current_user.profile.authority == "su"
      @profiles = Profile.all
    # else
      # @profiles = Profile.where(user_id: current_user.id)
    # end
    @profile = Profile.new
  end

  # GET /profiles/1 or /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    # @profile.user_id = current_user.id
    # @profile.username = current_user.username
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit

    if current_user.profile.authority != "su"
      @profile.username = current_user.username  
    end

  end

  # POST /profiles or /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to profile_url(@profile), notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profiles_path, notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:user_id, :username, :authority, :title, :role, :salarycondition, :ref)
    end
end
