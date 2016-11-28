class CreateFichacorta < ActiveRecord::Migration[5.0]
  def change
    create_table :fichacorta do |t|
      t.bigint :productomatnr
      t.integer :ferid
      t.float :fob
      t.integer :preciosug
      t.integer :productominmb
      t.integer :prvregcod

      t.timestamps
    end
  end
end
