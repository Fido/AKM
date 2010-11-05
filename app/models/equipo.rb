class Equipo < ActiveRecord::Base
  attr_accessible :name

<<<<<<< HEAD
  has_many :aprendices
  has_many :finales
  has_many :resultados
  
  validates :name ,
            :presence => true ,
            :uniqueness => true,
=======
  has_many :aprendices , :finales , :resultados

  validates :name ,
            :presence => true ,
>>>>>>> 91e5d57f9089ec8ae55ea768a83e35d18f56e487
            :length => { :maximum => 20 }
end
