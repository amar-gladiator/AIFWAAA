class GmcsController < ApplicationController
    
  before_action :set_gmc, only: [:show, :edit, :update, :destroy]

  # GET /gmcs
  # GET /gmcs.json
  def index
    @gmcs = Gmc.all
  end

  # GET /gmcs/1
  # GET /gmcs/1.json
  def show
  end
  def download_pdf
  send_file(
    "#{Rails.root}/public/Union.pdf",
    filename: "Union.pdf",
    type: "application/pdf"
  )
end

  # GET /gmcs/new
  def new
    @gmc = Gmc.new
  end

  # GET /gmcs/1/edit
  def edit
  end

  # POST /gmcs
  # POST /gmcs.json
  def create
    @gmc = Gmc.new(gmc_params)

    respond_to do |format|
      if @gmc.save
        format.html { redirect_to @gmc, notice: 'Gmc was successfully created.' }
        format.json { render :show, status: :created, location: @gmc }
      else
        format.html { render :new }
        format.json { render json: @gmc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gmcs/1
  # PATCH/PUT /gmcs/1.json
  def update
    respond_to do |format|
      if @gmc.update(gmc_params)
        format.html { redirect_to @gmc, notice: 'Gmc was successfully updated.' }
        format.json { render :show, status: :ok, location: @gmc }
      else
        format.html { render :edit }
        format.json { render json: @gmc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gmcs/1
  # DELETE /gmcs/1.json
  def destroy
    @gmc.destroy
    respond_to do |format|
      format.html { redirect_to gmcs_url, notice: 'Gmc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gmc
      @gmc = Gmc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gmc_params
      params.fetch(:gmc, {})
    end
end
