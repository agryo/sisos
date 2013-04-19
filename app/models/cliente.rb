class Cliente < ActiveRecord::Base
	has_many :ordems
  attr_accessible :cep, :cidade, :cpf, :endereco, :nome, :telefone
  validates_presence_of :cep, :cidade, :cpf, :endereco, :nome, :telefone 
  validates_length_of :cep,:in => 8..8
  validates_format_of :cep, :with=>%r\[0-9]\
  validates_length_of :telefone,:in => 8..11
  validates_format_of :telefone, :with=>%r\[0-9]\
  validates_length_of :nome,:in => 3..25
  validates_format_of :nome, :with=>%r\[a-zA-Z]\
  validates_length_of :cidade, :in => 4..25
  validates_format_of :cidade, :with=>%r\[a-zA-Z]\
  validates_length_of :cpf, :in => 11..11
  validates_format_of :cpf, :with=>%r\[0-9]\
  validates_length_of :endereco, :in => 8..30
end
