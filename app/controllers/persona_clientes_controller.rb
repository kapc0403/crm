class PersonaClientesController < ApplicationController
  before_action :set_persona_cliente, only: [:show, :edit, :update, :destroy]

  # GET /persona_clientes
  # GET /persona_clientes.json
  def index
    @persona_clientes = PersonaCliente.all
  end

  # GET /persona_clientes/1
  # GET /persona_clientes/1.json
  def show
  end

  # GET /persona_clientes/new
  def new
    @persona_cliente = PersonaCliente.new
  end

  # GET /persona_clientes/1/edit
  def edit
  end

  # POST /persona_clientes
  # POST /persona_clientes.json
  def create
    @persona_cliente = PersonaCliente.new(persona_cliente_params)

    respond_to do |format|
      if @persona_cliente.save
        format.html { redirect_to @persona_cliente, notice: 'Persona cliente was successfully created.' }
        format.json { render :show, status: :created, location: @persona_cliente }
      else
        format.html { render :new }
        format.json { render json: @persona_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /persona_clientes/1
  # PATCH/PUT /persona_clientes/1.json
  def update
    respond_to do |format|
      if @persona_cliente.update(persona_cliente_params)
        format.html { redirect_to @persona_cliente, notice: 'Persona cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @persona_cliente }
      else
        format.html { render :edit }
        format.json { render json: @persona_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persona_clientes/1
  # DELETE /persona_clientes/1.json
  def destroy
    @persona_cliente.destroy
    respond_to do |format|
      format.html { redirect_to persona_clientes_url, notice: 'Persona cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persona_cliente
      @persona_cliente = PersonaCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persona_cliente_params
      params.require(:persona_cliente).permit(:tipoCedula, :cedula, :fechaNacimiento, :nombre, :apellido, :telefono, :movil, :email, :direccion, :foto, :tipo, :fechaInicio, :fechaFin, :usuarios_id)
    end
end
