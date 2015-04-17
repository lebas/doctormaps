class CreateDmDentistaEspecialidades < ActiveRecord::Migration
  def change
    create_table :dm_dentista_especialidades do |t|
      t.references :dm_dentistum
      t.references :dm_especialidades
      t.timestamps null: false
    end
  end
end
