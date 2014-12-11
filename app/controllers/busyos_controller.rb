class BusyosController < ApplicationController
  before_action :set_busyo, only: [:show, :edit, :update, :destroy]

  # GET /busyos
  # GET /busyos.json
  def index
    @busyos = Busyo.all
  end

  # GET /busyos/1
  # GET /busyos/1.json
  def show
  end

  # GET /busyos/new
  def new
    @busyo = Busyo.new
  end

  # GET /busyos/1/edit
  def edit
  end

  # POST /busyos
  # POST /busyos.json
  def create
    @busyo = Busyo.new(busyo_params)

    respond_to do |format|
      if @busyo.save
        format.html { redirect_to @busyo, notice: 'Busyo was successfully created.' }
        format.json { render :show, status: :created, location: @busyo }
      else
        format.html { render :new }
        format.json { render json: @busyo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /busyos/1
  # PATCH/PUT /busyos/1.json
  def update
    respond_to do |format|
      if @busyo.update(busyo_params)
        format.html { redirect_to @busyo, notice: 'Busyo was successfully updated.' }
        format.json { render :show, status: :ok, location: @busyo }
      else
        format.html { render :edit }
        format.json { render json: @busyo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /busyos/1
  # DELETE /busyos/1.json
  def destroy
    @busyo.destroy
    respond_to do |format|
      format.html { redirect_to busyos_url, notice: 'Busyo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_busyo
      @busyo = Busyo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def busyo_params
      params.require(:busyo).permit(:name, :gl,:hyoujiname)
    end
end
