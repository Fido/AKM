class Equipo < ActiveRecord::Base
  attr_accessible :name

  has_many :aprendices
  has_many :finales
  has_many :resultados
  
  validates :name ,
            :presence => true ,
            :uniqueness => true,
            :length => { :maximum => 20 }
end
