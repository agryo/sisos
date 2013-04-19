class Ordem < ActiveRecord::Base
  belongs_to :cliente
  attr_accessible :maquina, :observacoes, :pecas, :cliente_id
  validates_presence_of :maquina, :pecas, :observacoes
  validates_length_of :maquina,:in => 2..15
  validates_length_of :pecas,:in => 2..60
  validates_length_of :observacoes,:in => 2..60
  validates_format_of :maquina, :with=>%r\[a-zA-Z]\
  validates_format_of :pecas, :with=>%r\[a-zA-Z]\
  validates_format_of :observacoes, :with=>%r\[a-zA-Z]\
end
