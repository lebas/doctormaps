ActiveAdmin.register DmClinica do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

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
    default_actions
  end

end
