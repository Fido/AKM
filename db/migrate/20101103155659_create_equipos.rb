class CreateEquipos < ActiveRecord::Migration
  def self.up
    create_table :equipos do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :equipos
  end
end
