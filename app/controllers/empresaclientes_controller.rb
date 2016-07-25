class EmpresaclientesController < ApplicationController
  before_action :set_empresacliente, only: [:show, :edit, :update, :destroy]

  # GET /empresaclientes
  # GET /empresaclientes.json
  def index
    @empresaclientes = Empresacliente.paginate(page: params[:page], per_page:15).all
   # @empresaclientes = Empresacliente.where("tipo = ?", "Cliente")
   respond_to do |format|
    format.html
    format.json { render json: ProductsDatatable.new(view_context) }
  end
  end
  
  def indexprospectos
    @empresaclientes = Empresacliente.paginate(page: params[:page], per_page:15).where("tipo = ?", "Prospecto")
  end

  # GET /empresaclientes/1
  # GET /empresaclientes/1.json
  def show
  end

  # GET /empresaclientes/new
  def new
    @empresacliente = Empresacliente.new
  end

  # GET /empresaclientes/1/edit
  def edit
  end
  
  def changetypecliente
    @asd = Empresacliente.update(params[:id], :tipo => "Cliente" )
    redirect_to empresacliente_path
  end

  # POST /empresaclientes
  # POST /empresaclientes.json
  def create
    @empresacliente = Empresacliente.new(empresacliente_params)
    respond_to do |format|
      if @empresacliente.save
        format.html { redirect_to @empresacliente, notice: 'Empresacliente was successfully created.' }
        format.json { render :show, status: :created, location: @empresacliente }
      else
        format.html { render :new }
        format.json { render json: @empresacliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresaclientes/1
  # PATCH/PUT /empresaclientes/1.json
  def update
    respond_to do |format|
      if @empresacliente.update(empresacliente_params)
        format.html { redirect_to @empresacliente, notice: 'Empresacliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresacliente }
      else
        format.html { render :edit }
        format.json { render json: @empresacliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresaclientes/1
  # DELETE /empresaclientes/1.json
  def destroy
    @empresacliente.destroy
    respond_to do |format|
      format.html { redirect_to empresaclientes_url, notice: 'Empresacliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresacliente
      @empresacliente = Empresacliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresacliente_params
      params.require(:empresacliente).permit(:tipoCedula, :fechaNacimiento, :personaNombre, :personaApellido, :personaTelefono, :personaMovil, :personaEmail, :personaDireccion, :nit, :empresaNombre, :empresaDireccion, :empresaTelefono, :empresaEmail, :paginaWeb, :foto, :tipo, :fechaInicio, :fechaFin, :usuario_id)
    end
end
