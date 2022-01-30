class CodeWeekdaysController < ApplicationController
  before_action :set_code_weekday, only: %i[ show edit update destroy ]

  # GET /code_weekdays or /code_weekdays.json
  def index
    @code_weekdays = CodeWeekday.all
  end

  # GET /code_weekdays/1 or /code_weekdays/1.json
  def show
  end

  # GET /code_weekdays/new
  def new
    @code_weekday = CodeWeekday.new
  end

  # GET /code_weekdays/1/edit
  def edit
  end

  # POST /code_weekdays or /code_weekdays.json
  def create
    @code_weekday = CodeWeekday.new(code_weekday_params)

    respond_to do |format|
      if @code_weekday.save
        format.html { redirect_to code_weekday_url(@code_weekday), notice: "Code weekday was successfully created." }
        format.json { render :show, status: :created, location: @code_weekday }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @code_weekday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_weekdays/1 or /code_weekdays/1.json
  def update
    respond_to do |format|
      if @code_weekday.update(code_weekday_params)
        format.html { redirect_to code_weekday_url(@code_weekday), notice: "Code weekday was successfully updated." }
        format.json { render :show, status: :ok, location: @code_weekday }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @code_weekday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_weekdays/1 or /code_weekdays/1.json
  def destroy
    @code_weekday.destroy

    respond_to do |format|
      format.html { redirect_to code_weekdays_url, notice: "Code weekday was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_weekday
      @code_weekday = CodeWeekday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def code_weekday_params
      params.require(:code_weekday).permit(:name, :priority, :content, :ref)
    end
end
