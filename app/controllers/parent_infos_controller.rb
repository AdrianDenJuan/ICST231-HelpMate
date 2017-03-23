class ParentInfosController < ApplicationController
  before_action :set_parent_info, only: [:show, :edit, :update, :destroy]

  # GET /parent_infos
  # GET /parent_infos.json
  def index
    @parent_infos = ParentInfo.all
  end

  # GET /parent_infos/1
  # GET /parent_infos/1.json
  def show
  end

  # GET /parent_infos/new
  def new
    @parent_info = ParentInfo.new
  end

  # GET /parent_infos/1/edit
  def edit
  end

  # POST /parent_infos
  # POST /parent_infos.json
  def create
    @parent_info = ParentInfo.new(parent_info_params)

    respond_to do |format|
      if @parent_info.save
        format.html { redirect_to @parent_info, notice: 'Parent info was successfully created.' }
        format.json { render :show, status: :created, location: @parent_info }
      else
        format.html { render :new }
        format.json { render json: @parent_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parent_infos/1
  # PATCH/PUT /parent_infos/1.json
  def update
    respond_to do |format|
      if @parent_info.update(parent_info_params)
        format.html { redirect_to @parent_info, notice: 'Parent info was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent_info }
      else
        format.html { render :edit }
        format.json { render json: @parent_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_infos/1
  # DELETE /parent_infos/1.json
  def destroy
    @parent_info.destroy
    respond_to do |format|
      format.html { redirect_to parent_infos_url, notice: 'Parent info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_info
      @parent_info = ParentInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_info_params
      params.require(:parent_info).permit(:name, :relate, :birth_date, :age, :religion, :nationality, :present_add, :contact_no, :educ_attain, :occp, :emp_name, :emp_addr, :freqInteract, :civil_stat, :pform_id)
    end
end
