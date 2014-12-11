class YouinjissekisController < ApplicationController
  before_action :set_youinjisseki, only: [:show, :edit, :update, :destroy]

  # GET /youinjissekis
  # GET /youinjissekis.json
  def index
    @youinjissekis = Youinjisseki.all
  end

  # GET /youinjissekis/1
  # GET /youinjissekis/1.json
  def show
  end

  # GET /youinjissekis/new
  def new
    @youinjisseki = Youinjisseki.new
  end

  # GET /youinjissekis/1/edit
  def edit
  end

  # POST /youinjissekis
  # POST /youinjissekis.json
  def create
    @youinjisseki = Youinjisseki.new(youinjisseki_params)

    respond_to do |format|
      if @youinjisseki.save
        format.html { redirect_to @youinjisseki, notice: 'Youinjisseki was successfully created.' }
        format.json { render :show, status: :created, location: @youinjisseki }
      else
        format.html { render :new }
        format.json { render json: @youinjisseki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /youinjissekis/1
  # PATCH/PUT /youinjissekis/1.json
  def update
    respond_to do |format|
      if @youinjisseki.update(youinjisseki_params)
        format.html { redirect_to @youinjisseki, notice: 'Youinjisseki was successfully updated.' }
        format.json { render :show, status: :ok, location: @youinjisseki }
      else
        format.html { render :edit }
        format.json { render json: @youinjisseki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /youinjissekis/1
  # DELETE /youinjissekis/1.json
  def destroy
    @youinjisseki.destroy
    respond_to do |format|
      format.html { redirect_to youinjissekis_url, notice: 'Youinjisseki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youinjisseki
      @youinjisseki = Youinjisseki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def youinjisseki_params
      params.require(:youinjisseki).permit(:youinwariate_id, :sagyouhoukoku_id, :kadouhour, :kadoumin, :nengetsu)
    end
end
