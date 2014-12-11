class PartnermembersController < ApplicationController
  before_action :set_partnermember, only: [:show, :edit, :update, :destroy]

  # GET /partnermembers
  # GET /partnermembers.json
  def index
    @partnermembers = Partnermember.all
  end

  # GET /partnermembers/1
  # GET /partnermembers/1.json
  def show
  end

  # GET /partnermembers/new
  def new
    @partnermember = Partnermember.new
  end

  # GET /partnermembers/1/edit
  def edit
  end

  # POST /partnermembers
  # POST /partnermembers.json
  def create
    @partnermember = Partnermember.new(partnermember_params)

    respond_to do |format|
      if @partnermember.save
        format.html { redirect_to @partnermember, notice: 'Partnermember was successfully created.' }
        format.json { render :show, status: :created, location: @partnermember }
      else
        format.html { render :new }
        format.json { render json: @partnermember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partnermembers/1
  # PATCH/PUT /partnermembers/1.json
  def update
    respond_to do |format|
      if @partnermember.update(partnermember_params)
        format.html { redirect_to @partnermember, notice: 'Partnermember was successfully updated.' }
        format.json { render :show, status: :ok, location: @partnermember }
      else
        format.html { render :edit }
        format.json { render json: @partnermember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partnermembers/1
  # DELETE /partnermembers/1.json
  def destroy
    @partnermember.destroy
    respond_to do |format|
      format.html { redirect_to partnermembers_url, notice: 'Partnermember was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partnermember
      @partnermember = Partnermember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partnermember_params
      params.require(:partnermember).permit(:shimeicode, :name,:partner_id)
    end
end
