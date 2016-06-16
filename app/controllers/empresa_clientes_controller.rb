class EmpresaClientesController < ApplicationController
  before_action :set_empresa_cliente, only: [:show, :edit, :update, :destroy]

  # GET /empresa_clientes
  # GET /empresa_clientes.json
  def index
    @empresa_clientes = EmpresaCliente.all
  end

  # GET /empresa_clientes/1
  # GET /empresa_clientes/1.json
  def show
  end

  # GET /empresa_clientes/new
  def new
    @empresa_cliente = EmpresaCliente.new
  end

  # GET /empresa_clientes/1/edit
  def edit
  end

  # POST /empresa_clientes
  # POST /empresa_clientes.json
  def create
    @empresa_cliente = EmpresaCliente.new(empresa_cliente_params)

    respond_to do |format|
      if @empresa_cliente.save
        format.html { redirect_to @empresa_cliente, notice: 'Empresa cliente was successfully created.' }
        format.json { render :show, status: :created, location: @empresa_cliente }
      else
        format.html { render :new }
        format.json { render json: @empresa_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresa_clientes/1
  # PATCH/PUT /empresa_clientes/1.json
  def update
    respond_to do |format|
      if @empresa_cliente.update(empresa_cliente_params)
        format.html { redirect_to @empresa_cliente, notice: 'Empresa cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresa_cliente }
      else
        format.html { render :edit }
        format.json { render json: @empresa_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresa_clientes/1
  # DELETE /empresa_clientes/1.json
  def destroy
    @empresa_cliente.destroy
    respond_to do |format|
      format.html { redirect_to empresa_clientes_url, notice: 'Empresa cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa_cliente
      @empresa_cliente = EmpresaCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_cliente_params
      params.require(:empresa_cliente).permit(:tipoCedula, :cedula, :fechaNacimiento, :personaNombre, :personaApellido, :personaTelefono, :personaMovil, :personaEmail, :personaDireccion, :nit, :empresaNombre, :empresaDireccion, :empresaTelefono, :empresaEmail, :paginaWeb, :foto, :tipo, :fechaInicio, :fechaFin, :usuarios_id)
    end
end
