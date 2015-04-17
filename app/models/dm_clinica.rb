class DmClinica < ActiveRecord::Base
  ESTADOS_BR = ['RJ','SP','DF','MG','PR']
  has_many :dm_clinica_especialidades
  validates :nome, :presence => true
  validates :endereco, :presence => true
  validates :bairro, :presence => true
  validates :cep, :presence => true
  validates :cidade, :presence => true
  validates :estado, :presence => true, :inclusion => { in: ESTADOS_BR }
  validates :telefone, :presence => true
  validates :inicio_atendimento, :presence => true
  validates :terminio_atendimento, :presence => true
  validates :ativo, :presence => true

  validates_length_of :cep, :is => 10, :message => 'O tamanho do campo CEP está incorreto'
  validates_length_of :estado, :is => 2, :message => 'O tamanho do campo Estado está incorreto'
  validates_length_of :telefone, :minimum => 14, :maximum => 15, :message => 'O tamanho do campo Telefone está incorreto'

  before_save :get_geo 

  private
  def get_geo
    if self.latitude > 1 and self.longitude > 1
      info = Geokit::Geocoders::MultiGeocoder.geocode("#{self.endereco} #{self.bairro} #{self.cidade} #{self.estado}")
      if info.success
        self.latitude = info.latitude
        self.longitude = info.longitude 
        self.cep = info.zip if self.cep.nil?
      end
    end
  end
end
