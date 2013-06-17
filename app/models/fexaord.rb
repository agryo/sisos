class Fexaord < ActiveRecord::Base
  belongs_to :ordem
  attr_accessible :ordem_id 
  # attr_accessible :title, :body
end
