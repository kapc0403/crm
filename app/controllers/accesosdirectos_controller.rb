class AccesosdirectosController < ApplicationController
  before_action :set_accesosdirecto, only: [:show, :edit, :update, :destroy]

  # GET /accesosdirectos
  # GET /accesosdirectos.json
  def index
    @accesosdirectos = Accesosdirecto.all
  end

  # GET /accesosdirectos/1
  # GET /accesosdirectos/1.json
  def show
  end

  # GET /accesosdirectos/new
  def new
    @accesosdirecto = Accesosdirecto.new
  end

  # GET /accesosdirectos/1/edit
  def edit
  end

  # POST /accesosdirectos
  # POST /accesosdirectos.json
  def create
    @accesosdirecto = Accesosdirecto.new(accesosdirecto_params)

    respond_to do |format|
      if @accesosdirecto.save
        format.html { redirect_to @accesosdirecto, notice: 'Accesosdirecto was successfully created.' }
        format.json { render :show, status: :created, location: @accesosdirecto }
      else
        format.html { render :new }
        format.json { render json: @accesosdirecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accesosdirectos/1
  # PATCH/PUT /accesosdirectos/1.json
  def update
    respond_to do |format|
      if @accesosdirecto.update(accesosdirecto_params)
        format.html { redirect_to @accesosdirecto, notice: 'Accesosdirecto was successfully updated.' }
        format.json { render :show, status: :ok, location: @accesosdirecto }
      else
        format.html { render :edit }
        format.json { render json: @accesosdirecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accesosdirectos/1
  # DELETE /accesosdirectos/1.json
  def destroy
    @accesosdirecto.destroy
    respond_to do |format|
      format.html { redirect_to accesosdirectos_url, notice: 'Accesosdirecto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accesosdirecto
      @accesosdirecto = Accesosdirecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accesosdirecto_params
      params.require(:accesosdirecto).permit(:usuario_id, :icon, :nombre, :url)
    end
end
