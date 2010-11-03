class CreateResultados < ActiveRecord::Migration
  def self.up
    create_table :resultados do |t|
      t.integer :equipo_id
      t.integer :respuesta_id

      t.timestamps
    end
  end

  def self.down
    drop_table :resultados
  end
end
