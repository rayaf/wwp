class RelacionamentosController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    usuario = User.find(params[:seguido_id])
    current_user.seguir(usuario)
    redirect_to relacionamentos_path
  end

  def destroy
    current_user.deixar_de_seguir(params[:id])
    redirect_to relacionamentos_path
  end

end
