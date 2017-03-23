class EducInfosController < ApplicationController
  before_action :set_educ_info, only: [:show, :edit, :update, :destroy]

  # GET /educ_infos
  # GET /educ_infos.json
  def index
    @educ_infos = EducInfo.all
  end

  # GET /educ_infos/1
  # GET /educ_infos/1.json
  def show
  end

  # GET /educ_infos/new
  def new
    @educ_info = EducInfo.new
  end

  # GET /educ_infos/1/edit
  def edit
  end

  # POST /educ_infos
  # POST /educ_infos.json
  def create
    @educ_info = EducInfo.new(educ_info_params)

    respond_to do |format|
      if @educ_info.save
        format.html { redirect_to @educ_info, notice: 'Educ info was successfully created.' }
        format.json { render :show, status: :created, location: @educ_info }
      else
        format.html { render :new }
        format.json { render json: @educ_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educ_infos/1
  # PATCH/PUT /educ_infos/1.json
  def update
    respond_to do |format|
      if @educ_info.update(educ_info_params)
        format.html { redirect_to @educ_info, notice: 'Educ info was successfully updated.' }
        format.json { render :show, status: :ok, location: @educ_info }
      else
        format.html { render :edit }
        format.json { render json: @educ_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educ_infos/1
  # DELETE /educ_infos/1.json
  def destroy
    @educ_info.destroy
    respond_to do |format|
      format.html { redirect_to educ_infos_url, notice: 'Educ info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_educ_info
      @educ_info = EducInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def educ_info_params
      params.require(:educ_info).permit(:level, :yr_grad, :school_addr, :recogawards, :educ_type, :pform_id)
    end
end
