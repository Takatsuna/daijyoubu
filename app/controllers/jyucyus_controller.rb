class JyucyusController < ApplicationController
  before_action :set_jyucyu, only: [:show, :edit, :update, :destroy]

  # GET /jyucyus
  # GET /jyucyus.json
  def index
    @jyucyus = Jyucyu.all
  end

  # GET /jyucyus/1
  # GET /jyucyus/1.json
  def show
  end

  # GET /jyucyus/new
  def new
    @jyucyu = Jyucyu.new

  end

  # GET /jyucyus/1/edit
  def edit
  end

  # POST /jyucyus
  # POST /jyucyus.json
  def create
    @jyucyu = Jyucyu.new(jyucyu_params)

    respond_to do |format|
      if @jyucyu.save
        format.html { redirect_to @jyucyu, notice: 'Jyucyu was successfully created.' }
        format.json { render :show, status: :created, location: @jyucyu }
      else
        format.html { render :new }
        format.json { render json: @jyucyu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jyucyus/1
  # PATCH/PUT /jyucyus/1.json
  def update
    respond_to do |format|
      if @jyucyu.update(jyucyu_params)
        format.html { redirect_to @jyucyu, notice: 'Jyucyu was successfully updated.' }
        format.json { render :show, status: :ok, location: @jyucyu }
      else
        format.html { render :edit }
        format.json { render json: @jyucyu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jyucyus/1
  # DELETE /jyucyus/1.json
  def destroy
    @jyucyu.destroy
    respond_to do |format|
      format.html { redirect_to jyucyus_url, notice: 'Jyucyu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jyucyu
      @jyucyu = Jyucyu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jyucyu_params
      params.require(:jyucyu).permit(:pjcode, :kenmei, :tantouteam, :pm, :start, :end, :kokyaku_id, :keiyakusyubetsu)
    end
end
