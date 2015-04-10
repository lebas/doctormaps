class CreateDmEspecialidades < ActiveRecord::Migration
  def change
    create_table :dm_especialidades do |t|
      t.string :especialidade, :null => false
      t.timestamps
    end
    add_index :dm_especialidades, :especialidade, :unique => true
  end
end
