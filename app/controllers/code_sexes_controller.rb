class CodeSexesController < ApplicationController
  before_action :set_code_sex, only: %i[ show edit update destroy ]

  # GET /code_sexes or /code_sexes.json
  def index
    @code_sexes = CodeSex.all
  end

  # GET /code_sexes/1 or /code_sexes/1.json
  def show
  end

  # GET /code_sexes/new
  def new
    @code_sex = CodeSex.new
  end

  # GET /code_sexes/1/edit
  def edit
  end

  # POST /code_sexes or /code_sexes.json
  def create
    @code_sex = CodeSex.new(code_sex_params)

    respond_to do |format|
      if @code_sex.save
        format.html { redirect_to code_sex_url(@code_sex), notice: "Code sex was successfully created." }
        format.json { render :show, status: :created, location: @code_sex }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @code_sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_sexes/1 or /code_sexes/1.json
  def update
    respond_to do |format|
      if @code_sex.update(code_sex_params)
        format.html { redirect_to code_sex_url(@code_sex), notice: "Code sex was successfully updated." }
        format.json { render :show, status: :ok, location: @code_sex }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @code_sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_sexes/1 or /code_sexes/1.json
  def destroy
    @code_sex.destroy

    respond_to do |format|
      format.html { redirect_to code_sexes_url, notice: "Code sex was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_sex
      @code_sex = CodeSex.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def code_sex_params
      params.require(:code_sex).permit(:sex, :priority, :no, :content, :ref)
    end
end
