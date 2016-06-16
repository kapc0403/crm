class ModeloPersonalizadosController < ApplicationController
  before_action :set_modelo_personalizado, only: [:show, :edit, :update, :destroy]

  # GET /modelo_personalizados
  # GET /modelo_personalizados.json
  def index
    @modelo_personalizados = ModeloPersonalizado.all
  end

  # GET /modelo_personalizados/1
  # GET /modelo_personalizados/1.json
  def show
  end

  # GET /modelo_personalizados/new
  def new
    @modelo_personalizado = ModeloPersonalizado.new
  end

  # GET /modelo_personalizados/1/edit
  def edit
  end

  # POST /modelo_personalizados
  # POST /modelo_personalizados.json
  def create
    @modelo_personalizado = ModeloPersonalizado.new(modelo_personalizado_params)

    respond_to do |format|
      if @modelo_personalizado.save
        format.html { redirect_to @modelo_personalizado, notice: 'Modelo personalizado was successfully created.' }
        format.json { render :show, status: :created, location: @modelo_personalizado }
      else
        format.html { render :new }
        format.json { render json: @modelo_personalizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modelo_personalizados/1
  # PATCH/PUT /modelo_personalizados/1.json
  def update
    respond_to do |format|
      if @modelo_personalizado.update(modelo_personalizado_params)
        format.html { redirect_to @modelo_personalizado, notice: 'Modelo personalizado was successfully updated.' }
        format.json { render :show, status: :ok, location: @modelo_personalizado }
      else
        format.html { render :edit }
        format.json { render json: @modelo_personalizado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modelo_personalizados/1
  # DELETE /modelo_personalizados/1.json
  def destroy
    @modelo_personalizado.destroy
    respond_to do |format|
      format.html { redirect_to modelo_personalizados_url, notice: 'Modelo personalizado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modelo_personalizado
      @modelo_personalizado = ModeloPersonalizado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modelo_personalizado_params
      params.require(:modelo_personalizado).permit(:colorApariencia, :homeW1, :homeW2, :homeW3, :homeW4, :homeW5, :homeW6, :homeW7, :homeW8, :homeW9, :homeW10, :usuario_id)
    end
end
