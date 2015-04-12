class HomeController < ApplicationController
  def index
    @planos = DmPlanosaude.order('nome').all
    @especialidades = DmEspecialidade.order('especialidade').all
    info = Geokit::Geocoders::MultiGeocoder.geocode('rua almirante alvaro alberto, 100 - são conrado')
    puts info
  end
end
