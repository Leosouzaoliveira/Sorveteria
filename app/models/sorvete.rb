class Sorvete < ActiveRecord::Base
  attr_accessible :cobertura, :preco, :sabor, :tipo_id

  has_many :produtos

end
