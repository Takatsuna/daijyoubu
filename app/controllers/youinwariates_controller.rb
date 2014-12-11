class YouinwariatesController < ApplicationController
  before_action :set_youinwariate, only: [:show, :edit, :update, :destroy]

  # GET /youinwariates
  # GET /youinwariates.json
  def index
    @youinwariates = Youinwariate.all
  end

  # GET /youinwariates/1
  # GET /youinwariates/1.json
  def show
  end

  # GET /youinwariates/new
  def new
    @youinwariate = Youinwariate.new
  end

  # GET /youinwariates/1/edit
  def edit
  end

  # POST /youinwariates
  # POST /youinwariates.json
  def create
    @youinwariate = Youinwariate.new(youinwariate_params)

    respond_to do |format|
      if @youinwariate.save
        format.html { redirect_to @youinwariate, notice: 'Youinwariate was successfully created.' }
        format.json { render :show, status: :created, location: @youinwariate }
      else
        format.html { render :new }
        format.json { render json: @youinwariate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /youinwariates/1
  # PATCH/PUT /youinwariates/1.json
  def update
    respond_to do |format|
      if @youinwariate.update(youinwariate_params)
        format.html { redirect_to @youinwariate, notice: 'Youinwariate was successfully updated.' }
        format.json { render :show, status: :ok, location: @youinwariate }
      else
        format.html { render :edit }
        format.json { render json: @youinwariate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /youinwariates/1
  # DELETE /youinwariates/1.json
  def destroy
    @youinwariate.destroy
    respond_to do |format|
      format.html { redirect_to youinwariates_url, notice: 'Youinwariate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youinwariate
      @youinwariate = Youinwariate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def youinwariate_params
      params.require(:youinwariate).permit(:itakuhaken_id, :partnermember_id)
    end
end
