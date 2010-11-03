class CreateProgramasResponsables < ActiveRecord::Migration
  def self.up
    create_table :programas_responsables do |t|
      t.integer :programa_id
      t.integer :instructor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :programas_responsables
  end
end
