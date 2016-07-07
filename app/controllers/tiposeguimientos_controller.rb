class TiposeguimientosController < ApplicationController
  before_action :set_tiposeguimiento, only: [:show, :edit, :update, :destroy]

  # GET /tiposeguimientos
  # GET /tiposeguimientos.json
  def index
    @tiposeguimientos = Tiposeguimiento.all
  end

  # GET /tiposeguimientos/1
  # GET /tiposeguimientos/1.json
  def show
  end

  # GET /tiposeguimientos/new
  def new
    @tiposeguimiento = Tiposeguimiento.new
  end

  # GET /tiposeguimientos/1/edit
  def edit
  end

  # POST /tiposeguimientos
  # POST /tiposeguimientos.json
  def create
    @tiposeguimiento = Tiposeguimiento.new(tiposeguimiento_params)

    respond_to do |format|
      if @tiposeguimiento.save
        format.html { redirect_to @tiposeguimiento, notice: 'Tiposeguimiento was successfully created.' }
        format.json { render :show, status: :created, location: @tiposeguimiento }
      else
        format.html { render :new }
        format.json { render json: @tiposeguimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiposeguimientos/1
  # PATCH/PUT /tiposeguimientos/1.json
  def update
    respond_to do |format|
      if @tiposeguimiento.update(tiposeguimiento_params)
        format.html { redirect_to @tiposeguimiento, notice: 'Tiposeguimiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiposeguimiento }
      else
        format.html { render :edit }
        format.json { render json: @tiposeguimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiposeguimientos/1
  # DELETE /tiposeguimientos/1.json
  def destroy
    @tiposeguimiento.destroy
    respond_to do |format|
      format.html { redirect_to tiposeguimientos_url, notice: 'Tiposeguimiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiposeguimiento
      @tiposeguimiento = Tiposeguimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiposeguimiento_params
      params.require(:tiposeguimiento).permit(:nombre, :activo)
    end
end
