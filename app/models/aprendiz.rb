class Aprendiz < ActiveRecord::Base
  attr_accessible :cedula , :nombre , :apellido , :fch_ncto , :email , :telefono ,
                  :genero , :municipio_id , :equipo_id , :programa_id

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

  def genero1
     (self.genero == 1) ?  "Femenino" : "Masculino"
  end

end
