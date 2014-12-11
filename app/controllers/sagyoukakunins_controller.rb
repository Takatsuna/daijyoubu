class SagyoukakuninsController < ApplicationController
  before_action :set_sagyoukakunin, only: [:show, :edit, :update, :destroy]

  # GET /sagyoukakunins
  # GET /sagyoukakunins.json
  def index
    @sagyoukakunins = Sagyoukakunin.all
  end

  # GET /sagyoukakunins/1
  # GET /sagyoukakunins/1.json
  def show
  end

  # GET /sagyoukakunins/new
  def new
    @sagyoukakunin = Sagyoukakunin.new
  end

  # GET /sagyoukakunins/1/edit
  def edit
  end

  # POST /sagyoukakunins
  # POST /sagyoukakunins.json
  def create
    @sagyoukakunin = Sagyoukakunin.new(sagyoukakunin_params)

    respond_to do |format|
      if @sagyoukakunin.save
        format.html { redirect_to @sagyoukakunin, notice: 'Sagyoukakunin was successfully created.' }
        format.json { render :show, status: :created, location: @sagyoukakunin }
      else
        format.html { render :new }
        format.json { render json: @sagyoukakunin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sagyoukakunins/1
  # PATCH/PUT /sagyoukakunins/1.json
  def update
    respond_to do |format|
      if @sagyoukakunin.update(sagyoukakunin_params)
        format.html { redirect_to @sagyoukakunin, notice: 'Sagyoukakunin was successfully updated.' }
        format.json { render :show, status: :ok, location: @sagyoukakunin }
      else
        format.html { render :edit }
        format.json { render json: @sagyoukakunin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sagyoukakunins/1
  # DELETE /sagyoukakunins/1.json
  def destroy
    @sagyoukakunin.destroy
    respond_to do |format|
      format.html { redirect_to sagyoukakunins_url, notice: 'Sagyoukakunin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sagyoukakunin
      @sagyoukakunin = Sagyoukakunin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sagyoukakunin_params
      params.require(:sagyoukakunin).permit(:sagyouhoukoku_id, :atena, :sashidashi, :sumi, :nengetsu)
    end
end
