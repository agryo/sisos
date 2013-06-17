class Fexaord < ActiveRecord::Base
  belongs_to :ordem
  attr_accessible :ordem_id 
  # attr_accessible :title, :body
  validates_uniqueness_of   :ordem_id, message:" ja foi fechada, por favor, verifique o ID"
end
