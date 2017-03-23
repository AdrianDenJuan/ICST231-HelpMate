class CouncilorsController < ApplicationController
  before_action :set_councilor, only: [:show, :edit, :update, :destroy]

  # GET /councilors
  # GET /councilors.json
  def index
    @councilors = Councilor.all
  end

  # GET /councilors/1
  # GET /councilors/1.json
  def show
  end

  # GET /councilors/new
  def new
    @councilor = Councilor.new
  end

  # GET /councilors/1/edit
  def edit
  end

  # POST /councilors
  # POST /councilors.json
  def create
    @councilor = Councilor.new(councilor_params)

    respond_to do |format|
      if @councilor.save
        format.html { redirect_to @councilor, notice: 'Councilor was successfully created.' }
        format.json { render :show, status: :created, location: @councilor }
      else
        format.html { render :new }
        format.json { render json: @councilor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /councilors/1
  # PATCH/PUT /councilors/1.json
  def update
    respond_to do |format|
      if @councilor.update(councilor_params)
        format.html { redirect_to @councilor, notice: 'Councilor was successfully updated.' }
        format.json { render :show, status: :ok, location: @councilor }
      else
        format.html { render :edit }
        format.json { render json: @councilor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /councilors/1
  # DELETE /councilors/1.json
  def destroy
    @councilor.destroy
    respond_to do |format|
      format.html { redirect_to councilors_url, notice: 'Councilor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_councilor
      @councilor = Councilor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def councilor_params
      params.require(:councilor).permit(:fname, :mi, :lname, :department, :user_id)
    end
end
