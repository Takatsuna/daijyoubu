class ItakuhakensController < ApplicationController
  before_action :set_itakuhaken, only: [:show, :edit, :update, :destroy]

  # GET /itakuhakens
  # GET /itakuhakens.json
  def index
    @itakuhakens = Itakuhaken.all
  end

  # GET /itakuhakens/1
  # GET /itakuhakens/1.json
  def show
    @youinwariates = @itakuhaken.youinwariates.all
    
    #契約開始日の属する月初日もとめる
    @gessyo = @itakuhaken.start.beginning_of_month
    #契約終了日の属する月末日もとめる
    @getsumatsu = @itakuhaken.end.end_of_month
    #当該期間の月数をもとめる
    @sa = (@getsumatsu - @gessyo).to_i
    
  end

  # GET /itakuhakens/new
  def new
    @itakuhaken = Itakuhaken.new
  end

  # GET /itakuhakens/1/edit
  def edit
  end

  # POST /itakuhakens
  # POST /itakuhakens.json
  def create
    @itakuhaken = Itakuhaken.new(itakuhaken_params)

    respond_to do |format|
      if @itakuhaken.save
        format.html { redirect_to @itakuhaken, notice: 'Itakuhaken was successfully created.' }
        format.json { render :show, status: :created, location: @itakuhaken }
      else
        format.html { render :new }
        format.json { render json: @itakuhaken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itakuhakens/1
  # PATCH/PUT /itakuhakens/1.json
  def update
    respond_to do |format|
      if @itakuhaken.update(itakuhaken_params)
        format.html { redirect_to @itakuhaken, notice: 'Itakuhaken was successfully updated.' }
        format.json { render :show, status: :ok, location: @itakuhaken }
      else
        format.html { render :edit }
        format.json { render json: @itakuhaken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itakuhakens/1
  # DELETE /itakuhakens/1.json
  def destroy
    @itakuhaken.destroy
    respond_to do |format|
      format.html { redirect_to itakuhakens_url, notice: 'Itakuhaken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itakuhaken
      @itakuhaken = Itakuhaken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itakuhaken_params
      params.require(:itakuhaken).permit(:kessaibango, :kessaikenmei, :start, :end, :ukeireninzu, :jyucyu_id, :partner_id)
    end
end
