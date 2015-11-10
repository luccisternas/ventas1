class CreatePreferencials < ActiveRecord::Migration
  def change
    create_table :preferencials do |t|
      t.string :nombre
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
