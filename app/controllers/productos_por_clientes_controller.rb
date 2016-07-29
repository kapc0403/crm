class ProductosPorClientesController < ApplicationController
  before_action :set_productos_por_cliente, only: [:show, :edit, :update, :destroy]

  # GET /productos_por_clientes
  # GET /productos_por_clientes.json
  def index
    @productos_por_clientes = ProductosPorCliente.all
  end

  # GET /productos_por_clientes/1
  # GET /productos_por_clientes/1.json
  def show
  end

  # GET /productos_por_clientes/new
  def new
    @productos_por_cliente = ProductosPorCliente.new
  end

  # GET /productos_por_clientes/1/edit
  def edit
  end

  # POST /productos_por_clientes
  # POST /productos_por_clientes.json
  def create
    @productos_por_cliente = ProductosPorCliente.new(productos_por_cliente_params)

    respond_to do |format|
      if @productos_por_cliente.save
        format.html { redirect_to @productos_por_cliente, notice: 'Productos por cliente was successfully created.' }
        format.json { render :show, status: :created, location: @productos_por_cliente }
      else
        format.html { render :new }
        format.json { render json: @productos_por_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos_por_clientes/1
  # PATCH/PUT /productos_por_clientes/1.json
  def update
    respond_to do |format|
      if @productos_por_cliente.update(productos_por_cliente_params)
        format.html { redirect_to @productos_por_cliente, notice: 'Productos por cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @productos_por_cliente }
      else
        format.html { render :edit }
        format.json { render json: @productos_por_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos_por_clientes/1
  # DELETE /productos_por_clientes/1.json
  def destroy
    @productos_por_cliente.destroy
    respond_to do |format|
      format.html { redirect_to productos_por_clientes_url, notice: 'Productos por cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productos_por_cliente
      @productos_por_cliente = ProductosPorCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productos_por_cliente_params
      params.require(:productos_por_cliente).permit(:usuario_id, :nombre, :marca, :referencia, :nroProductos, :fechaAdquisicion, :fechaCaducidad, :datosTecnicos, :serial)
    end
end
