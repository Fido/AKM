class CreateFases < ActiveRecord::Migration
  def self.up
    create_table :fases do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :fases
  end
end
