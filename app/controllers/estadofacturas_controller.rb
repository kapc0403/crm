class EstadofacturasController < ApplicationController
  before_action :set_estadofactura, only: [:show, :edit, :update, :destroy]

  # GET /estadofacturas
  # GET /estadofacturas.json
  def index
    @estadofacturas = Estadofactura.all
  end

  # GET /estadofacturas/1
  # GET /estadofacturas/1.json
  def show
  end

  # GET /estadofacturas/new
  def new
    @estadofactura = Estadofactura.new
  end

  # GET /estadofacturas/1/edit
  def edit
  end

  # POST /estadofacturas
  # POST /estadofacturas.json
  def create
    @estadofactura = Estadofactura.new(estadofactura_params)

    respond_to do |format|
      if @estadofactura.save
        format.html { redirect_to @estadofactura, notice: 'Estadofactura was successfully created.' }
        format.json { render :show, status: :created, location: @estadofactura }
      else
        format.html { render :new }
        format.json { render json: @estadofactura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadofacturas/1
  # PATCH/PUT /estadofacturas/1.json
  def update
    respond_to do |format|
      if @estadofactura.update(estadofactura_params)
        format.html { redirect_to @estadofactura, notice: 'Estadofactura was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadofactura }
      else
        format.html { render :edit }
        format.json { render json: @estadofactura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadofacturas/1
  # DELETE /estadofacturas/1.json
  def destroy
    @estadofactura.destroy
    respond_to do |format|
      format.html { redirect_to estadofacturas_url, notice: 'Estadofactura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadofactura
      @estadofactura = Estadofactura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estadofactura_params
      params.require(:estadofactura).permit(:nombre)
    end
end
