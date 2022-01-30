class PaymentsController < ApplicationController
  before_action :set_payment, only: %i[ show edit update destroy ]

  # GET /payments or /payments.json

  # date_object = Time.current
  # .where(date_time: date_object.beginning_of_month..date_object.end_of_month)

  def index

    @schedules = Schedule
                   .select("schedules.*,
                            count(id) as reservation_count")
                   .by_client(params[:client])
                   .by_yearmonth(params[:yearmonth])
                   .group(:name, :client)
                   .order("client ASC, name ASC")
                  
    @payments = Payment.all.order("date DESC")
    @payment = Payment.new

    # @payments = Payment
    #               .all
    #               .select("payments.*,
    #                        count(case when method = '신용카드' then id end) as card_count,
    #                        count(case when method = '현금' then id end) as cash_count,
    #                        sum(payamount) as amount_sum")

  end

  # GET /payments/1 or /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @payment = Payment.new

  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments or /payments.json
  def create
    @payment = Payment.new(payment_params)

    respond_to do |format|
      if @payment.save
        format.html { redirect_to payment_url(@payment), notice: "Payment was successfully created." }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1 or /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to payment_url(@payment), notice: "Payment was successfully updated." }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1 or /payments/1.json
  def destroy
    @payment.destroy

    respond_to do |format|
      format.html { redirect_to payments_url, notice: "Payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_params
      params.require(:payment).permit(:client, :yearmonth, :payamount, :method, :date, :memo, :ref)
    end
end
