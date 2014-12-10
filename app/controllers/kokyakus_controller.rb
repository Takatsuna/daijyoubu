class KokyakusController < ApplicationController
  before_action :set_kokyaku, only: [:show, :edit, :update, :destroy]

  # GET /kokyakus
  # GET /kokyakus.json
  def index
    @kokyakus = Kokyaku.all
  end

  # GET /kokyakus/1
  # GET /kokyakus/1.json
  def show
  end

  # GET /kokyakus/new
  def new
    @kokyaku = Kokyaku.new
  end

  # GET /kokyakus/1/edit
  def edit
  end

  # POST /kokyakus
  # POST /kokyakus.json
  def create
    @kokyaku = Kokyaku.new(kokyaku_params)

    respond_to do |format|
      if @kokyaku.save
        format.html { redirect_to @kokyaku, notice: 'Kokyaku was successfully created.' }
        format.json { render :show, status: :created, location: @kokyaku }
      else
        format.html { render :new }
        format.json { render json: @kokyaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kokyakus/1
  # PATCH/PUT /kokyakus/1.json
  def update
    respond_to do |format|
      if @kokyaku.update(kokyaku_params)
        format.html { redirect_to @kokyaku, notice: 'Kokyaku was successfully updated.' }
        format.json { render :show, status: :ok, location: @kokyaku }
      else
        format.html { render :edit }
        format.json { render json: @kokyaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kokyakus/1
  # DELETE /kokyakus/1.json
  def destroy
    @kokyaku.destroy
    respond_to do |format|
      format.html { redirect_to kokyakus_url, notice: 'Kokyaku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kokyaku
      @kokyaku = Kokyaku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kokyaku_params
      params.require(:kokyaku).permit(:name)
    end
end
