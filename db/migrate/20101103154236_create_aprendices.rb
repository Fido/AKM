class CreateAprendices < ActiveRecord::Migration
  def self.up
    create_table :aprendices do |t|
      t.integer :cedula
      t.string :nombre
      t.string :apellido
      t.date :fch_ncto
      t.string :email
      t.string :telefono
      t.tinyint :genero
      t.integer :municipio_id
      t.integer :equipo_id
      t.integer :programa_id

      t.timestamps
    end
  end

  def self.down
    drop_table :aprendices
  end
end
