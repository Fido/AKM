class Fase < ActiveRecord::Base
  attr_accessible :name

  has_many :pruebas

  validates :name ,
            :presence => true ,
<<<<<<< HEAD
            :uniqueness => true,
=======
>>>>>>> 91e5d57f9089ec8ae55ea768a83e35d18f56e487
            :length => { :maximum => 30 }

end
