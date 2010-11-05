class Aprendiz < ActiveRecord::Base
  attr_accessible :cedula , :nombre , :email

<<<<<<< HEAD
  belongs_to :programa 
  belongs_to :municipio
  belongs_to :equipo
  
  has_many :pruebas
=======
  belongs_to :programa , :municipio , :equipo

  has_many  :pruebas
>>>>>>> 91e5d57f9089ec8ae55ea768a83e35d18f56e487

  validates :cedula ,
            :presence => true ,
            :numericality => true, 
            :length => { :maximum => 30 }

  validates :nombre ,
            :presence => true ,
            :length => { :maximum => 30 }

  validates :email,
            :presence => true,
<<<<<<< HEAD
            :length => {:minimum => 5, :maximum => 254},
=======
            :length => {:minimum => 3, :maximum => 254},
>>>>>>> 91e5d57f9089ec8ae55ea768a83e35d18f56e487
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i } 
end
