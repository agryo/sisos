class Cliente < ActiveRecord::Base
	has_many :ordems
  attr_accessible :cep, :cidade, :cpf, :endereco, :nome, :telefone
  validates_presence_of :cep, message:"deve ser preenxido"
  validates_presence_of :cidade, message:"deve ser preenxido"
  validates_presence_of :cpf, message:"deve ser preenxido"
  validates_presence_of :endereco , message:"deve ser preenxido"
  validates_presence_of :nome, message:"deve ser preenxido"
  validates_presence_of :telefone, message:"deve ser preenxido"
  
  validates_length_of :cep,:in => 8..8 , message:"deve conter 8 digitos"
  validates_format_of :cep, :with=>%r\[0-9]\, message:"esta invalido"
  validates_length_of :telefone,:in => 8..11, message:"deve conter 8 a 11 digitos"
  validates_format_of :telefone, :with=>%r\[0-9]\, message:"esta invalido"
  validates_length_of :nome,:in => 3..25, message:"deve conter 3 a 25 digitos"
  validates_format_of :nome, :with=>%r\[a-zA-Z]\, message:"esta invalido"
  validates_length_of :cidade, :in => 4..25 , message:"deve conter 4 a 25 digitos"
  validates_format_of :cidade, :with=>%r\[a-zA-Z]\, message:"esta invalido"
  validates_length_of :cpf, :in => 11..11
  validates_format_of :cpf, :with=>%r\[0-9]\
  validates_length_of :endereco, :in => 8..30 , message:"deve conter 8 a 30 digitos"
  validates_numericality_of :telefone, message:"deve conter apenas numero",:only_integer => true
  validates_numericality_of :cep, message:"deve conter apenas numero",:only_integer => true
end
