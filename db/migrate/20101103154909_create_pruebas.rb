class CreatePruebas < ActiveRecord::Migration
  def self.up
    create_table :pruebas do |t|
      t.string :name
      t.datetime :fch_limite
      t.integer :fase_id
      t.integer :aprendiz_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pruebas
  end
end
