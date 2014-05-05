
class LoginController < ApplicationController
  layout "login"
  skip_before_filter :logado

  def index
    render :action => "new"
  end

  def new
  end

  def create
    @usuario = Usuario.where("login = ? AND senha = ?", params[:login], params[:senha]).first

    if @usuario
      session[:sis_logon] = @usuario
      flash[:notice] = 'Logado com sucesso! Bem-vindo(a).'
      redirect_to :controller => "home", :action => "index"
    else
      flash[:notice] = 'Verifique suas credenciais para acesso ao sistema.'
      redirect_to :action => "index"
    end

  end

  def destroy
    session[:sis_logon] = nil
    flash[:notice] = 'Desconectado com sucesso!'
    redirect_to :action => "index"
  end
end
