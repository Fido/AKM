class CreateAvances < ActiveRecord::Migration
  def self.up
    create_table :avances do |t|
      t.integer :final_id
      t.integer :prueba_id

      t.timestamps
    end
  end

  def self.down
    drop_table :avances
  end
end
