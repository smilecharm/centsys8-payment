class SchedulesController < ApplicationController
  before_action :set_schedule, only: %i[ show edit update destroy ]
  # before_action :authenticate_user!, only: [:index, :show, :edit, :update, :destroy]

  # GET /schedules or /schedules.json
  def index
    
    # if current_user.profile.authority == "su"
      # @schedules = Schedule.all.order("name ASC, client ASC, date ASC, time ASC")
    # else
      @schedules = Schedule.where(user_id: current_user.id).order("client ASC, date ASC, time ASC")
    # end

    @schedule = Schedule.new
    @schedule.user_id = current_user.id
    @schedule.name = current_user.username
  end

  def index_authority
    return if current_user&.role == 'admin'
    flash[:error] = 'You are not an admin'
  end

  # GET /schedules/1 or /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
    @schedule.user_id = current_user.id
    @schedule.name = current_user.username
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules or /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to schedules_path, notice: "신규일정이 생성되었습니다." }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedules/1 or /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to schedules_path, notice: "일정이 수정되었습니다." }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1 or /schedules/1.json
  def destroy
    @schedule.destroy

    respond_to do |format|
      format.html { redirect_to schedules_url, notice: "Schedule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_params
      params.require(:schedule).permit(:user_id, :name, :client, :date, :time, ref:[:paykind, :case])
    end
end
