class UsuariosController < ApplicationController
  before_action :authenticate_usuario!

  def index
      @users = Usuario.paginate(page: params[:page], per_page:15).all
      @user = Usuario.new
  end

  def show
    @user = Usuario.find(params[:id])
  end

  def edit
    @user = Usuario.find(params[:id])
  end
  
  def new
    @user = Usuario.new
  end
  def update
    respond_to do |format|
      @user = Usuario.find(params[:id])
      if @user.update(user_params)
        format.html { redirect_to usuarios_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  def destroy
    @user = Usuario.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_path, notice: 'User aso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  
  
  def user_params
      params.require(:usuario).permit(:email, :nombreUsuario, :password, :password_confirmation, :nombre, 
                    :apellido, :rol, :telefono, :movil, :estado, :foto, :current_password, 
                    menu_rapido_attributes: [:usuario_id, :accesor1, :accesor2, :accesor3, :accesor4,
                    :accesor5, :acceso6, :accesor7])
  end
  

end