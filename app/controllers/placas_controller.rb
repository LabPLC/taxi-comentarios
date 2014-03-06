class PlacasController < ApplicationController
  before_action :set_placa, only: [:show, :edit, :update, :destroy]

  # GET /placas
  # GET /placas.json
  def index
    @placas = Placa.all
  end

  # GET /placas/1
  # GET /placas/1.json
  def show
    @comentarios = @placa.comentarios
  end

  # GET /placas/new
  def new
    @placa = Placa.new
  end

  # GET /placas/1/edit
  def edit
  end

  # POST /placas
  # POST /placas.json
  def create
    @placa = Placa.new(placa_params)

    respond_to do |format|
      if @placa.save
        format.html { redirect_to @placa, notice: 'Placa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @placa }
      else
        format.html { render action: 'new' }
        format.json { render json: @placa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /placas/1
  # PATCH/PUT /placas/1.json
  def update
    respond_to do |format|
      if @placa.update(placa_params)
        format.html { redirect_to @placa, notice: 'Placa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @placa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /placas/1
  # DELETE /placas/1.json
  def destroy
    @placa.destroy
    respond_to do |format|
      format.html { redirect_to placas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_placa
      @placa = Placa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def placa_params
      params.require(:placa).permit(:numero)
    end
end
