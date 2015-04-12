ActiveAdmin.register DmPlanosaude, namespace: :admin  do
  config.batch_actions = false
  menu parent: 'Base', label: 'Planos de Saúde'
  filter :nome

  index do
    column :nome
    column :tipo
  end

  form do |f|
    f.inputs "Detalhes do Plano de Saúde" do
      f.input :nome
      f.input :tipo
    end
    f.actions
  end

end
