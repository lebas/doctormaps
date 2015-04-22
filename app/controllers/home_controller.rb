class HomeController < ApplicationController
  include HomeHelper

  def index
    @planos = DmPlanosaude.order('nome').all
    @especialidades = DmEspecialidade.order('requisicao').all 
    @cllocal = "["
    DmClinica.select(:nome, :latitude, :longitude).where('latitude <> 0').collect { |x| @cllocal << "{ lat: #{x.latitude}, lng: #{x.longitude}, title: '#{x.nome}', infowindow: '#{x.nome}'},"  }
    @cllocal << "]"
    if !params[:objetos].nil?
      obj = params[:objetos]
      puts obj
    end
  end
end
