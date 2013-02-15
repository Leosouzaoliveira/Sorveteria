class Produto < ActiveRecord::Base
  attr_accessible :nome, :preco, :tipo

  validates_presence_of :nome, message: "deve ser preenchido"
  validates_presence_of :nome, preco: "deve ser preenchido"

  belongs_to :sorvetes
end
