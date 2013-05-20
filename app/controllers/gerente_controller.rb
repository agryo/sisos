class GerenteController < ApplicationController
before_filter :authenticate_admin!
  
def index
  @ordems = Ordem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ordems }
    end
end
def destroy
	@usuario = Usuario.find(params[:id])
	@usuario.destroy
end
def pendentes
  @ordems = Ordem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ordems }
    end
end

def funcionarios
  @usuarios = Usuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ordems }
    end
end
end