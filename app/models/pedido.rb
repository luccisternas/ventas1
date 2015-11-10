class Pedido < ActiveRecord::Base
  belongs_to :producto
  belongs_to :cliente
end
