class CreateFinales < ActiveRecord::Migration
  def self.up
    create_table :finales do |t|
      t.string :totales
      t.integer :equipo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :finales
  end
end
