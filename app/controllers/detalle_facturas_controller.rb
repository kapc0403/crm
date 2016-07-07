class DetalleFacturasController < ApplicationController
  before_action :set_detalle_factura, only: [:show, :edit, :update, :destroy, :destroybyfactura]
  skip_before_action :verify_authenticity_token
  respond_to :json
  # GET /detalle_facturas
  # GET /detalle_facturas.json
  def index
   # @detalle_factura = DetalleFactura.where("factura_id = ?", @detalle_factura.factura_id)
  end
  

  # GET /detalle_facturas/1
  # GET /detalle_facturas/1.json
  def show
  end
  
  # GET /detalle_facturas/getproductosdetallefacturabyid/1
  def getproductosdetallefacturabyid
    
    @detalle_factura_productos = DetalleFactura
                        .joins('INNER JOIN Productos ON Productos.id = producto_id')
                        .select('detalle_facturas.factura_id AS facturaId,
                                 Productos.id AS producId,
                                 Productos.nombre AS productName,
                                 Productos.precio AS unitPrice,
                                 detalle_facturas.cantidad AS qty,
                                 CAST(descuento AS int) AS discount,
                                 total AS total,
                                 "lola" AS type')
                        .where("Productos.id IS NOT NULL")
                        .where("factura_id = ?", params[:id])
                        .order("Productos.precio")
=begin
       @detalle_factura_productos = CustomerMailer.factura_email(6).deliver_now
    
    mail = Mail.new do
      from     'me@test.lindsaar.net'
      to       'kedwin85@hotmail.com'
      subject  'Here is the image you wanted'
      body     'Hola'
    end

    mail.delivery_method :sendmail

   mail.deliver
=end

    render json: @detalle_factura_productos, status: :ok
  end
  
  # GET /detalle_facturas/getserviciosdetallefacturabyid/1
  def getserviciosdetallefacturabyid
                   
    @detalle_factura_servicios = DetalleFactura
                    .joins('INNER JOIN Servicios ON Servicios.id = servicio_id')
                    .select("detalle_facturas.factura_id AS facturaId,
                             Servicios.id AS producId,
                             Servicios.nombre AS productName,
                             Servicios.precio AS unitPrice,
                             detalle_facturas.cantidad AS qty,
                             CAST(descuento AS int) AS discount,
                             total AS total,
                             'lola' AS type")
                    .where("Servicios.id IS NOT NULL")
                    .where("factura_id = ?", params[:id])
                    .order("Servicios.precio")                    
                    .all
                  
    render json: @detalle_factura_servicios, status: :ok
  end
  
  # DELETE detalle_facturas/destroydetallesbyfacturaid/15
  def destroydetallesbyfacturaid
    @elementsToDelete = DetalleFactura.where("factura_id = ?", params[:id])
    @countElementsToDelete = @elementsToDelete.count
    @elemetsDeleted = @elementsToDelete
    @elementsToDelete.delete_all
    
    @respuesta = {
          "mesaje" => "ok",
          "count" => @countElementsToDelete.to_i,
          "deletedItems" => @elemetsDeleted
        }

    render json: @respuesta, status: :ok
  end

  # GET /detalle_facturas/new
  def new
    @detalle_factura = DetalleFactura.new
  end

  # GET /detalle_facturas/1/edit
  def edit
  end

  # POST /detalle_facturas
  # POST /detalle_facturas.json
  def create
    @detalle_factura = DetalleFactura.new(detalle_factura_params)

    respond_to do |format|
      if @detalle_factura.save
        format.html { redirect_to @detalle_factura, notice: 'Detalle factura was successfully created.' }
        format.json { render :show, status: :created, location: @detalle_factura }
      else
        format.html { render :new }
        format.json { render json: @detalle_factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_facturas/1
  # PATCH/PUT /detalle_facturas/1.json
  def update
    respond_to do |format|
      if @detalle_factura.update(detalle_factura_params)
        format.html { redirect_to @detalle_factura, notice: 'Detalle factura was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle_factura }
      else
        format.html { render :edit }
        format.json { render json: @detalle_factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_facturas/1
  # DELETE /detalle_facturas/1.json
  def destroy
    @deleteall = DetalleFactura.where("factura_id = ?", @detalle_factura.factura_id)
    @deleteall.destroy
    respond_to do |format|
      format.html { redirect_to detalle_facturas_url, notice: 'Detalle factura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_factura
      @detalle_factura = DetalleFactura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_factura_params
      params.require(:detalle_factura).permit(:factura_id, :cantidad, :total, :descuento, :producto_id, :servicio_id)
    end
end
