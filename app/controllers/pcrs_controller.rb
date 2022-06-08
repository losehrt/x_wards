class PcrsController < ApplicationController
  TOKEN = "secret"
  skip_before_action :verify_authenticity_token, only: [:api]
  before_action :authenticate, only: [:api]

  before_action :set_pcr, only: %i[ show edit update destroy ]

  # GET /pcrs or /pcrs.json
  def index
    @pcrs = Pcr.all
  end

  # GET /pcrs/1 or /pcrs/1.json
  def show
  end

  # GET /pcrs/new
  def new
    @pcr = Pcr.new
  end

  # GET /pcrs/1/edit
  def edit
  end

  # POST /pcrs or /pcrs.json
  def create
    @pcr = Pcr.new(pcr_params)

    respond_to do |format|
      if @pcr.save
        format.html { redirect_to pcr_url(@pcr), notice: "Pcr was successfully created." }
        format.json { render :show, status: :created, location: @pcr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pcr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pcrs/1 or /pcrs/1.json
  def update
    respond_to do |format|
      if @pcr.update(pcr_params)
        format.html { redirect_to pcr_url(@pcr), notice: "Pcr was successfully updated." }
        format.json { render :show, status: :ok, location: @pcr }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pcr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pcrs/1 or /pcrs/1.json
  def destroy
    @pcr.destroy

    respond_to do |format|
      format.html { redirect_to pcrs_url, notice: "Pcr was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  # POST positive datasets from hospital imformation system
  def api
    # binding.pry
    pcr = Pcr.create! JSON.parse params[:inpatients]
    if pcr
      render json: { resultCode: 0 }, status: :ok
    else
      render json: pcr.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pcr
      @pcr = Pcr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pcr_params
      params.require(:pcr).permit(:inpatient_seq, :is_special_ward, :positived_days, :patient_no, :patient_name, :patient_idno, :ward_bed, :vs_doctor_uid, :vs_doctor_name, :admitted_at, :examined_at, :reported_at, :order_code, :examined_result)
    end

    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        # Compare the tokens in a time-constant manner, to mitigate
        # timing attacks.
        ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
      end
    end
end
