class CreateDmDentista < ActiveRecord::Migration
  def change
    create_table :dm_dentistas do |t|
      t.references :dm_especialidades
      t.string :nome, :null => false
      t.text :endereco, :null => false
      t.string :bairro, :null => false
      t.string :cep, :limit => 9
      t.string :cidade, :null => false
      t.string :estado, :null => false, :limit => 2
      t.string :cro, :null => false
      t.string :telefone, :limit => 17
      t.string :logotipo
      t.decimal :latitude, :precision => 15, :scale => 13, :default => 0
      t.decimal :longitude, :precision => 15, :scale => 13, :default => 0
      t.datetime :inicio_atendimento, :null => false
      t.datetime :terminio_atendimento, :null => false
      t.boolean :ativo, :null => false, :default => false
      t.timestamps
    end
    add_index :dm_dentistas, :cro, :unique => true
  end
end
