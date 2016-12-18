# -*- coding: utf-8 -*-
ActiveAdmin.register DmClinica, namespace: :admin do
  ESTADOS_BR = ['RJ','SP','DF','MG','PR']
  config.batch_actions = false
  menu parent: 'Base', label: 'Clinicas'
  filter :nome

  index do
    column :dm_especialidades
    column :nome
    column :cidade
    column :estado
    column :telefone
    column :inicio_atendimento
    column :terminio_atendimento
    column :ativo
  end

  form do |f|
    f.inputs "Detalhes da clinica" do
      f.input :nome
      f.input :dm_especialidades, label: 'Especialidade', collection: DmEspecialidade.all.sort_by(&:especialidade), prompt: 'Selecionar'
      f.input :cidade
      f.input :dm_especialidades, label: 'Estado', collection: ESTADOS_BR, prompt: 'Selecionar'
      f.input :telefone
      f.input :inicio_atendimento
      f.input :terminio_atendimento
      f.input :ativo   
    end
    f.actions
  end

end
