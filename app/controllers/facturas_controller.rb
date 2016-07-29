class FacturasController < ApplicationController
  before_action :set_factura, only: [:show, :edit, :update, :destroy]

  # GET /facturas
  # GET /facturas.json
  def index
    @facturas = Factura.paginate(page: params[:page], per_page:15).where("estadofactura_id = ?", "4")
    @factura = Factura.new
  end
  
  def indexpropuestas
    @facturas = Factura.paginate(page: params[:page], per_page:15).where("estadofactura_id = ?", "1")
    @factura = Factura.new
  end
  
  def indexordenes
    @facturas = Factura.paginate(page: params[:page], per_page:15).where("estadofactura_id = ?", "3")
    @factura = Factura.new
  end
  
  def indexpedidos
    @facturas = Factura.paginate(page: params[:page], per_page:15).where("estadofactura_id = ?", "2")
    @factura = Factura.new
  end
  
  def changestatepropuesta
    @asd = Factura.update(params[:id], :estadofactura_id => "1" )
    redirect_to factura_path
  end
  
  def changestatepedido
    @asd = Factura.update(params[:id], :estadofactura_id => "2" )
    redirect_to factura_path
  end

  def changestateorden
    @asd = Factura.update(params[:id], :estadofactura_id => "3" )
    redirect_to factura_path
  end
  
  def changestatefactura
    @asd = Factura.update(params[:id], :estadofactura_id => "4" )
    redirect_to factura_path
  end

  # GET /facturas/1
  # GET /facturas/1.json
  def show
  end

  # GET /facturas/new
  def new
    @factura = Factura.new
  end

  # GET /facturas/1/edit
  def edit
  end

  # POST /facturas
  # POST /facturas.json
  def create
    @factura = Factura.new(factura_params)

    respond_to do |format|
      if @factura.save
=begin
        @seguimiento = {
          :empresacliente_id => @factura.empresacliente_id
          , :tiposeguimiento_id => 3 
          , :descripcion =>
          , :usuario_id =>
          , :fecha =>
        }
        @seguimientoGuardado = Seguimiento.new
=end        
        format.html { render :edit, :notice => "Hola"}
        format.json { render :show, status: :created, location: @factura }
        format.js { render text: 'alert("hola");' }
      else
        format.html { render :new }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facturas/1
  # PATCH/PUT /facturas/1.json
  def update
    CustomerMailer.factura_email
    respond_to do |format|
      if @factura.update(factura_params)
        format.html { redirect_to @factura, notice: 'Factura was successfully updated.' }
        format.json { render :show, status: :ok, location: @factura }
      else
        format.html { render :edit }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas/1
  # DELETE /facturas/1.json
  def destroy
    @factura.destroy
    respond_to do |format|
      format.html { redirect_to facturas_url, notice: 'Factura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factura
      @factura = Factura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factura_params
      params.require(:factura)
      .permit(:fecha, :fechafin, :ordencompra, :estadofactura_id, :empresacliente_id, :personacliente_id, :usuario_id, :condiciones)
    end
end
