class CodePaykindsController < ApplicationController
  before_action :set_code_paykind, only: %i[ show edit update destroy ]

  # GET /code_paykinds or /code_paykinds.json
  def index
    @code_paykinds = CodePaykind.all
  end

  # GET /code_paykinds/1 or /code_paykinds/1.json
  def show
  end

  # GET /code_paykinds/new
  def new
    @code_paykind = CodePaykind.new
  end

  # GET /code_paykinds/1/edit
  def edit
  end

  # POST /code_paykinds or /code_paykinds.json
  def create
    @code_paykind = CodePaykind.new(code_paykind_params)

    respond_to do |format|
      if @code_paykind.save
        format.html { redirect_to code_paykind_url(@code_paykind), notice: "Code paykind was successfully created." }
        format.json { render :show, status: :created, location: @code_paykind }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @code_paykind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_paykinds/1 or /code_paykinds/1.json
  def update
    respond_to do |format|
      if @code_paykind.update(code_paykind_params)
        format.html { redirect_to code_paykind_url(@code_paykind), notice: "Code paykind was successfully updated." }
        format.json { render :show, status: :ok, location: @code_paykind }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @code_paykind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_paykinds/1 or /code_paykinds/1.json
  def destroy
    @code_paykind.destroy

    respond_to do |format|
      format.html { redirect_to code_paykinds_url, notice: "Code paykind was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_paykind
      @code_paykind = CodePaykind.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def code_paykind_params
      params.require(:code_paykind).permit(:paykind, :monthlysupport, :unitprice, :selfpay, :ref)
    end
end
