class CodeCentersController < ApplicationController
  before_action :set_code_center, only: %i[ show edit update destroy ]

  # GET /code_centers or /code_centers.json
  def index
    @code_centers = CodeCenter.all.order("priority ASC")
  end

  # GET /code_centers/1 or /code_centers/1.json
  def show
  end

  # GET /code_centers/new
  def new
    @code_center = CodeCenter.new
  end

  # GET /code_centers/1/edit
  def edit
  end

  # POST /code_centers or /code_centers.json
  def create
    @code_center = CodeCenter.new(code_center_params)

    respond_to do |format|
      if @code_center.save
        format.html { redirect_to code_center_url(@code_center), notice: "Code center was successfully created." }
        format.json { render :show, status: :created, location: @code_center }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @code_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_centers/1 or /code_centers/1.json
  def update
    respond_to do |format|
      if @code_center.update(code_center_params)
        format.html { redirect_to code_center_url(@code_center), notice: "Code center was successfully updated." }
        format.json { render :show, status: :ok, location: @code_center }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @code_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_centers/1 or /code_centers/1.json
  def destroy
    @code_center.destroy

    respond_to do |format|
      format.html { redirect_to code_centers_url, notice: "Code center was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_center
      @code_center = CodeCenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def code_center_params
      params.require(:code_center).permit(:name, :priority, :telno, :address, :ref)
    end
end
