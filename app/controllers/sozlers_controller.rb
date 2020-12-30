class SozlersController < ApplicationController
  before_action :set_sozler, only: [:show, :edit, :update, :destroy]

  # GET /sozlers
  # GET /sozlers.json
  def index
    @sozlers = Sozler.all
  end




  # GET /sozlers/1
  # GET /sozlers/1.json
  def show
  end

  # GET /sozlers/new
  def new
    @sozler = Sozler.new
  end

  # GET /sozlers/1/edit
  def edit
  end

  # POST /sozlers
  # POST /sozlers.json
  def create
    @sozler = Sozler.new(sozler_params)

    respond_to do |format|
      if @sozler.save
        format.html { redirect_to @sozler, notice: 'Söz Eklendi.' }
        format.json { render :show, status: :created, location: @sozler }
      else
        format.html { render :new }
        format.json { render json: @sozler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sozlers/1
  # PATCH/PUT /sozlers/1.json
  def update
    respond_to do |format|
      if @sozler.update(sozler_params)
        format.html { redirect_to @sozler, notice: 'Söz Güncellendi' }
        format.json { render :show, status: :ok, location: @sozler }
      else
        format.html { render :edit }
        format.json { render json: @sozler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sozlers/1
  # DELETE /sozlers/1.json
  def destroy
    @sozler.destroy
    respond_to do |format|
      format.html { redirect_to sozlers_url, notice: 'Söz Silindi.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sozler
      @sozler = Sozler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sozler_params
      params.require(:sozler).permit(:yazar, :soz)
    end
end
