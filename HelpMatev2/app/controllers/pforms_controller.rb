class PformsController < ApplicationController
  before_action :set_pform, only: [:show, :edit, :update, :destroy]

  # GET /pforms
  # GET /pforms.json
  def index
    @pforms = Pform.all
  end

  # GET /pforms/1
  # GET /pforms/1.json
  def show
  end

  # GET /pforms/new
  def new
    @pform = Pform.new
  end

  # GET /pforms/1/edit
  def edit
  end

  # POST /pforms
  # POST /pforms.json
  def create
    @pform = Pform.new(pform_params)

    respond_to do |format|
      if @pform.save
        format.html { redirect_to @pform, notice: 'Pform was successfully created.' }
        format.json { render :show, status: :created, location: @pform }
      else
        format.html { render :new }
        format.json { render json: @pform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pforms/1
  # PATCH/PUT /pforms/1.json
  def update
    respond_to do |format|
      if @pform.update(pform_params)
        format.html { redirect_to @pform, notice: 'Pform was successfully updated.' }
        format.json { render :show, status: :ok, location: @pform }
      else
        format.html { render :edit }
        format.json { render json: @pform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pforms/1
  # DELETE /pforms/1.json
  def destroy
    @pform.destroy
    respond_to do |format|
      format.html { redirect_to pforms_url, notice: 'Pform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pform
      @pform = Pform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pform_params
      params.require(:pform).permit(:fname, :mi, :lname, :coursemajor, :student_id, :year_level, :photoloc, :perm_address, :pres_address, :contact_no, :email, :birth_date, :age, :sex, :p_of_birth, :nationality, :civil_stat, :admis_type, :emp_name, :emp_addr, :emp_cont_no, :yr_w_emp, :faveplace, :curr_work, :posHeld, :reason4AdNU, :whoDecide, :hobbies, :dateAcccom)
    end
end
