class Ordem < ActiveRecord::Base

	 belongs_to :cliente
  attr_accessible :maquina, :observacoes, :pecas, :cliente_id
  validates_presence_of :maquina, :pecas, :observacoes, message:"deve ser preenxido"
  validates_length_of :maquina,:in => 2..20 , message:"deve conter de 2 a 20 digitos"
  validates_length_of :pecas,:in => 2..80, message:"deve conter de 2 a 80 digitos"
  validates_length_of :observacoes,:in => 2..500, message:"Deve conter de 2 a 500 digitos"
  validates_format_of :maquina, :with=>%r\[a-zA-Z]\, message:"esta invalido"
  validates_format_of :pecas, :with=>%r\[a-zA-Z]\, message:"esta invalido"
  validates_format_of :observacoes, :with=>%r\[a-zA-Z]\, message:"esta invalido"
end
