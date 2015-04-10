class DmMedico < ActiveRecord::Base
  ESTADOS_BR = ['RJ','SP','DF','MG','PR']
  belongs_to :dm_especialidades
  validates :nome, :presence => true
  validates :endereco, :presence => true
  validates :bairro, :presence => true
  validates :cep, :presence => true
  validates :cidade, :presence => true
  validates :estado, :presence => true, inclusion: { in: ESTADOS_BR }
  validates :telefone, :presence => true
  validates :inicio_atendimento, :presence => true
  validates :terminio_atendimento, :presence => true
  validates :ativo, :presence => true
    
  #:logotipo
  #t.decimal :latitude, :precision => 15, :scale => 13, :default => 0
  #t.decimal :longitude, :precision => 15, :scale => 13, :default => 0
    
  validates_uniqueness_of :crm
  
  validates_length_of :cep, :is => 10, :message => 'O tamanho do campo CEP está incorreto'
  validates_length_of :estado, :is => 2, :message => 'O tamanho do campo Estado está incorreto'
  validates_length_of :telefone, :minimum => 14, :maximum => 15, :message => 'O tamanho do campo Telefone está incorreto'

  before_save :get_geo

  private
  def get_geo
    if self.latitude == 0
      self.latitude = 1
      self.longitude = 1
    end
  end
end
