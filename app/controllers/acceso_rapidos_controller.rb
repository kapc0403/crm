class AccesoRapidosController < ApplicationController
  before_action :set_acceso_rapido, only: [:show, :edit, :update, :destroy]

  # GET /acceso_rapidos
  # GET /acceso_rapidos.json
  def index
    @acceso_rapidos = AccesoRapido.all
  end

  # GET /acceso_rapidos/1
  # GET /acceso_rapidos/1.json
  def show
  end

  # GET /acceso_rapidos/new
  def new
    @acceso_rapido = AccesoRapido.new
  end

  # GET /acceso_rapidos/1/edit
  def edit
  end

  # POST /acceso_rapidos
  # POST /acceso_rapidos.json
  def create
    @acceso_rapido = AccesoRapido.new(acceso_rapido_params)

    respond_to do |format|
      if @acceso_rapido.save
        format.html { redirect_to @acceso_rapido, notice: 'Acceso rapido was successfully created.' }
        format.json { render :show, status: :created, location: @acceso_rapido }
      else
        format.html { render :new }
        format.json { render json: @acceso_rapido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acceso_rapidos/1
  # PATCH/PUT /acceso_rapidos/1.json
  def update
    respond_to do |format|
      if @acceso_rapido.update(acceso_rapido_params)
        format.html { redirect_to @acceso_rapido, notice: 'Acceso rapido was successfully updated.' }
        format.json { render :show, status: :ok, location: @acceso_rapido }
      else
        format.html { render :edit }
        format.json { render json: @acceso_rapido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acceso_rapidos/1
  # DELETE /acceso_rapidos/1.json
  def destroy
    @acceso_rapido.destroy
    respond_to do |format|
      format.html { redirect_to acceso_rapidos_url, notice: 'Acceso rapido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acceso_rapido
      @acceso_rapido = AccesoRapido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acceso_rapido_params
      params.require(:acceso_rapido).permit(:nombre, :url, :icon)
    end
end
