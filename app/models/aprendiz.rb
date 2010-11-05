class Aprendiz < ActiveRecord::Base
  attr_accessible :cedula , :nombre , :email

  belongs_to :programa 
  belongs_to :municipio
  belongs_to :equipo
  
  has_many :pruebas

  validates :cedula ,
            :presence => true ,
            :numericality => true, 
            :length => { :maximum => 30 }

  validates :nombre ,
            :presence => true ,
            :length => { :maximum => 30 }

  validates :email,
            :presence => true,
            :length => {:minimum => 3, :maximum => 254},
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i } 
end
