class CreatePreguntas < ActiveRecord::Migration
  def self.up
    create_table :preguntas do |t|
      t.string :pregunta
      t.char :buena
      t.tinyint :puntaje
      t.integer :prueba_id

      t.timestamps
    end
  end

  def self.down
    drop_table :preguntas
  end
end
