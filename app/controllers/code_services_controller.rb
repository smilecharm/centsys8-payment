class CodeServicesController < ApplicationController
  before_action :set_code_service, only: %i[ show edit update destroy ]

  # GET /code_services or /code_services.json
  def index
    @code_services = CodeService.all
  end

  # GET /code_services/1 or /code_services/1.json
  def show
  end

  # GET /code_services/new
  def new
    @code_service = CodeService.new
  end

  # GET /code_services/1/edit
  def edit
  end

  # POST /code_services or /code_services.json
  def create
    @code_service = CodeService.new(code_service_params)

    respond_to do |format|
      if @code_service.save
        format.html { redirect_to code_service_url(@code_service), notice: "Code service was successfully created." }
        format.json { render :show, status: :created, location: @code_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @code_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_services/1 or /code_services/1.json
  def update
    respond_to do |format|
      if @code_service.update(code_service_params)
        format.html { redirect_to code_service_url(@code_service), notice: "Code service was successfully updated." }
        format.json { render :show, status: :ok, location: @code_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @code_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_services/1 or /code_services/1.json
  def destroy
    @code_service.destroy

    respond_to do |format|
      format.html { redirect_to code_services_url, notice: "Code service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_service
      @code_service = CodeService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def code_service_params
      params.require(:code_service).permit(:name, :contents, :priority, :unitprice, :ref)
    end
end
