class CreateInstructores < ActiveRecord::Migration
  def self.up
    create_table :instructores do |t|
      t.integer :cedula
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :instructores
  end
end
