class ContactEmergsController < ApplicationController
  before_action :set_contact_emerg, only: [:show, :edit, :update, :destroy]

  # GET /contact_emergs
  # GET /contact_emergs.json
  def index
    @contact_emergs = ContactEmerg.all
  end

  # GET /contact_emergs/1
  # GET /contact_emergs/1.json
  def show
  end

  # GET /contact_emergs/new
  def new
    @contact_emerg = ContactEmerg.new
  end

  # GET /contact_emergs/1/edit
  def edit
  end

  # POST /contact_emergs
  # POST /contact_emergs.json
  def create
    @contact_emerg = ContactEmerg.new(contact_emerg_params)

    respond_to do |format|
      if @contact_emerg.save
        format.html { redirect_to @contact_emerg, notice: 'Contact emerg was successfully created.' }
        format.json { render :show, status: :created, location: @contact_emerg }
      else
        format.html { render :new }
        format.json { render json: @contact_emerg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_emergs/1
  # PATCH/PUT /contact_emergs/1.json
  def update
    respond_to do |format|
      if @contact_emerg.update(contact_emerg_params)
        format.html { redirect_to @contact_emerg, notice: 'Contact emerg was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_emerg }
      else
        format.html { render :edit }
        format.json { render json: @contact_emerg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_emergs/1
  # DELETE /contact_emergs/1.json
  def destroy
    @contact_emerg.destroy
    respond_to do |format|
      format.html { redirect_to contact_emergs_url, notice: 'Contact emerg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_emerg
      @contact_emerg = ContactEmerg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_emerg_params
      params.require(:contact_emerg).permit(:name, :relate, :addr, :contact_no, :email_add, :pform_id)
    end
end
