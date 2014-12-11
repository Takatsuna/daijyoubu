class SagyoushijisController < ApplicationController
  before_action :set_sagyoushiji, only: [:show, :edit, :update, :destroy]

  # GET /sagyoushijis
  # GET /sagyoushijis.json
  def index
    @sagyoushijis = Sagyoushiji.all
  end

  # GET /sagyoushijis/1
  # GET /sagyoushijis/1.json
  def show
  end

  # GET /sagyoushijis/new
  def new
    @sagyoushiji = Sagyoushiji.new
  end

  # GET /sagyoushijis/1/edit
  def edit
  end

  # POST /sagyoushijis
  # POST /sagyoushijis.json
  def create
    @sagyoushiji = Sagyoushiji.new(sagyoushiji_params)

    respond_to do |format|
      if @sagyoushiji.save
        format.html { redirect_to @sagyoushiji, notice: 'Sagyoushiji was successfully created.' }
        format.json { render :show, status: :created, location: @sagyoushiji }
      else
        format.html { render :new }
        format.json { render json: @sagyoushiji.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sagyoushijis/1
  # PATCH/PUT /sagyoushijis/1.json
  def update
    respond_to do |format|
      if @sagyoushiji.update(sagyoushiji_params)
        format.html { redirect_to @sagyoushiji, notice: 'Sagyoushiji was successfully updated.' }
        format.json { render :show, status: :ok, location: @sagyoushiji }
      else
        format.html { render :edit }
        format.json { render json: @sagyoushiji.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sagyoushijis/1
  # DELETE /sagyoushijis/1.json
  def destroy
    @sagyoushiji.destroy
    respond_to do |format|
      format.html { redirect_to sagyoushijis_url, notice: 'Sagyoushiji was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sagyoushiji
      @sagyoushiji = Sagyoushiji.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sagyoushiji_params
      params.require(:sagyoushiji).permit(:itakuhaken_id, :sagyouhoukoku_id, :atena, :sashidashi, :jisshinaiyou, :sumi, :nengetsu)
    end
end
