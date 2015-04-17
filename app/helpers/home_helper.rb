module HomeHelper
	def update_gmaps
		@clinicas = DmClinica.where("latitude > ?", 1)
    @clinicas.collect {|x|
      info = Geokit::Geocoders::MultiGeocoder.geocode("#{x.endereco} #{x.bairro} #{x.cidade} #{x.estado}")
      if info.success
      	x.update_attribute(:latitude, info.latitude)
	      x.update_attribute(:longitude, info.longitude) 
	      x.update_attribute(:cep, info.zip) if x.cep.nil?
	    end
    }
  end
end
