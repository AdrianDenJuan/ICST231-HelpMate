class OtherInfosController < ApplicationController
  before_action :set_other_info, only: [:show, :edit, :update, :destroy]

  # GET /other_infos
  # GET /other_infos.json
  def index
    @other_infos = OtherInfo.all
  end

  # GET /other_infos/1
  # GET /other_infos/1.json
  def show
  end

  # GET /other_infos/new
  def new
    @other_info = OtherInfo.new
  end

  # GET /other_infos/1/edit
  def edit
  end

  # POST /other_infos
  # POST /other_infos.json
  def create
    @other_info = OtherInfo.new(other_info_params)

    respond_to do |format|
      if @other_info.save
        format.html { redirect_to @other_info, notice: 'Other info was successfully created.' }
        format.json { render :show, status: :created, location: @other_info }
      else
        format.html { render :new }
        format.json { render json: @other_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_infos/1
  # PATCH/PUT /other_infos/1.json
  def update
    respond_to do |format|
      if @other_info.update(other_info_params)
        format.html { redirect_to @other_info, notice: 'Other info was successfully updated.' }
        format.json { render :show, status: :ok, location: @other_info }
      else
        format.html { render :edit }
        format.json { render json: @other_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_infos/1
  # DELETE /other_infos/1.json
  def destroy
    @other_info.destroy
    respond_to do |format|
      format.html { redirect_to other_infos_url, notice: 'Other info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_info
      @other_info = OtherInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_info_params
      params.require(:other_info).permit(:n_condition, :condition_temp, :langugage, :long_guard, :pform_id)
    end
end
