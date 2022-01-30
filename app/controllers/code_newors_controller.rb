class CodeNeworsController < ApplicationController
  before_action :set_code_newor, only: %i[ show edit update destroy ]

  # GET /code_newors or /code_newors.json
  def index
    @code_newors = CodeNewor.all
  end

  # GET /code_newors/1 or /code_newors/1.json
  def show
  end

  # GET /code_newors/new
  def new
    @code_newor = CodeNewor.new
  end

  # GET /code_newors/1/edit
  def edit
  end

  # POST /code_newors or /code_newors.json
  def create
    @code_newor = CodeNewor.new(code_newor_params)

    respond_to do |format|
      if @code_newor.save
        format.html { redirect_to code_newor_url(@code_newor), notice: "Code newor was successfully created." }
        format.json { render :show, status: :created, location: @code_newor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @code_newor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_newors/1 or /code_newors/1.json
  def update
    respond_to do |format|
      if @code_newor.update(code_newor_params)
        format.html { redirect_to code_newor_url(@code_newor), notice: "Code newor was successfully updated." }
        format.json { render :show, status: :ok, location: @code_newor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @code_newor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_newors/1 or /code_newors/1.json
  def destroy
    @code_newor.destroy

    respond_to do |format|
      format.html { redirect_to code_newors_url, notice: "Code newor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_newor
      @code_newor = CodeNewor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def code_newor_params
      params.require(:code_newor).permit(:name, :priority, :content, :ref)
    end
end
