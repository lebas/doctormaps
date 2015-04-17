class CreateDmMedicoEspecialidades < ActiveRecord::Migration
  def change
    create_table :dm_medico_especialidades do |t|
      t.references :dm_medicos
      t.references :dm_especialidades
      t.timestamps null: false
    end
  end
end
