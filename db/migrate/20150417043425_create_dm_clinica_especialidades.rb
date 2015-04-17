class CreateDmClinicaEspecialidades < ActiveRecord::Migration
  def change
    create_table :dm_clinica_especialidades do |t|
      t.references :dm_clinicas
      t.references :dm_especialidades
      t.timestamps null: false
    end
  end
end
