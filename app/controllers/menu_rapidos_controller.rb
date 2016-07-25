class MenuRapidosController < ApplicationController
  before_action :set_menu_rapido, only: [:show, :edit, :update, :destroy]

  # GET /menu_rapidos
  # GET /menu_rapidos.json
  def index
    @menu_rapidos = MenuRapido.all
  end

  # GET /menu_rapidos/1
  # GET /menu_rapidos/1.json
  def show
  end

  # GET /menu_rapidos/new
  def new
    @menu_rapido = MenuRapido.new
  end

  # GET /menu_rapidos/1/edit
  def edit
  end

  # POST /menu_rapidos
  # POST /menu_rapidos.json
  def create
    @menu_rapido = MenuRapido.new(menu_rapido_params)

    respond_to do |format|
      if @menu_rapido.save
        format.html { redirect_to @menu_rapido, notice: 'Menu rapido was successfully created.' }
        format.json { render :show, status: :created, location: @menu_rapido }
      else
        format.html { render :new }
        format.json { render json: @menu_rapido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_rapidos/1
  # PATCH/PUT /menu_rapidos/1.json
  def update
    respond_to do |format|
      if @menu_rapido.update(menu_rapido_params)
        format.html { redirect_to @menu_rapido, notice: 'Menu rapido was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_rapido }
      else
        format.html { render :edit }
        format.json { render json: @menu_rapido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_rapidos/1
  # DELETE /menu_rapidos/1.json
  def destroy
    @menu_rapido.destroy
    respond_to do |format|
      format.html { redirect_to menu_rapidos_url, notice: 'Menu rapido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_rapido
      @menu_rapido = MenuRapido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_rapido_params
      params.require(:menu_rapido).permit(:usuario_id, :accesor1, :accesor2, :accesor3, :accesor4, :accesor5, :acceso6, :accesor7)
    end
end
