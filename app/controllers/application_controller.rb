# encoding: utf-8

class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :logado

  def logado
    unless session[:sis_logon]
      flash[:notice] = "Você precisa logar no sistema para realizar esta ação!"
      redirect_to :controller => 'login', :action => 'index'
    end
  end

end
