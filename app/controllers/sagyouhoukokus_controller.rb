class SagyouhoukokusController < ApplicationController
  before_action :set_sagyouhoukoku, only: [:show, :edit, :update, :destroy]

  # GET /sagyouhoukokus
  # GET /sagyouhoukokus.json
  def index
    @sagyouhoukokus = Sagyouhoukoku.all
  end

  # GET /sagyouhoukokus/1
  # GET /sagyouhoukokus/1.json
  def show
  end

  # GET /sagyouhoukokus/new
  def new
    @sagyouhoukoku = Sagyouhoukoku.new
  end

  # GET /sagyouhoukokus/1/edit
  def edit
  end

  # POST /sagyouhoukokus
  # POST /sagyouhoukokus.json
  def create
    @sagyouhoukoku = Sagyouhoukoku.new(sagyouhoukoku_params)

    respond_to do |format|
      if @sagyouhoukoku.save
        format.html { redirect_to @sagyouhoukoku, notice: 'Sagyouhoukoku was successfully created.' }
        format.json { render :show, status: :created, location: @sagyouhoukoku }
      else
        format.html { render :new }
        format.json { render json: @sagyouhoukoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sagyouhoukokus/1
  # PATCH/PUT /sagyouhoukokus/1.json
  def update
    respond_to do |format|
      if @sagyouhoukoku.update(sagyouhoukoku_params)
        format.html { redirect_to @sagyouhoukoku, notice: 'Sagyouhoukoku was successfully updated.' }
        format.json { render :show, status: :ok, location: @sagyouhoukoku }
      else
        format.html { render :edit }
        format.json { render json: @sagyouhoukoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sagyouhoukokus/1
  # DELETE /sagyouhoukokus/1.json
  def destroy
    @sagyouhoukoku.destroy
    respond_to do |format|
      format.html { redirect_to sagyouhoukokus_url, notice: 'Sagyouhoukoku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sagyouhoukoku
      @sagyouhoukoku = Sagyouhoukoku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sagyouhoukoku_params
      params.require(:sagyouhoukoku).permit(:sagyoushiji_id, :sagyoukakunin_id, :atena, :sashidashi, :youinjisseki_id, :jisshinaiyou, :sumi, :nengetsu)
    end
end
