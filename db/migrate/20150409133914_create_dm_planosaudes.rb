class CreateDmPlanosaudes < ActiveRecord::Migration
  def change
    create_table :dm_planosaudes do |t|
      t.string :nome, :null => false
      t.string :tipo
      t.integer  :requesicao, :default => 0, :null => false
      t.timestamps
    end
  end
end
