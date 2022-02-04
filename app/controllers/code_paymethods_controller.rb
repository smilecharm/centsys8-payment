class CodePaymethodsController < ApplicationController
  before_action :set_code_paymethod, only: %i[ show edit update destroy ]

  # GET /code_paymethods or /code_paymethods.json
  def index
    @code_paymethods = CodePaymethod.all
  end

  # GET /code_paymethods/1 or /code_paymethods/1.json
  def show
  end

  # GET /code_paymethods/new
  def new
    @code_paymethod = CodePaymethod.new
  end

  # GET /code_paymethods/1/edit
  def edit
  end

  # POST /code_paymethods or /code_paymethods.json
  def create
    @code_paymethod = CodePaymethod.new(code_paymethod_params)

    respond_to do |format|
      if @code_paymethod.save
        format.html { redirect_to code_paymethod_url(@code_paymethod), notice: "Code paymethod was successfully created." }
        format.json { render :show, status: :created, location: @code_paymethod }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @code_paymethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_paymethods/1 or /code_paymethods/1.json
  def update
    respond_to do |format|
      if @code_paymethod.update(code_paymethod_params)
        format.html { redirect_to code_paymethod_url(@code_paymethod), notice: "Code paymethod was successfully updated." }
        format.json { render :show, status: :ok, location: @code_paymethod }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @code_paymethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_paymethods/1 or /code_paymethods/1.json
  def destroy
    @code_paymethod.destroy

    respond_to do |format|
      format.html { redirect_to code_paymethods_url, notice: "Code paymethod was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_paymethod
      @code_paymethod = CodePaymethod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def code_paymethod_params
      params.require(:code_paymethod).permit(:name, :priority, :content, :memo, :ref)
    end
end
