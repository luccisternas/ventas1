class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :productos, index: true
      t.references :clientes, index: true

      t.timestamps
    end
  end
end
