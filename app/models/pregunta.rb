class Pregunta < ActiveRecord::Base
  attr_accessible :pregunta , :buena , :puntaje , :prueba_id

  belongs_to :prueba

  has_many :respuestas

  validates :pregunta ,
            :presence => true ,
            :length => { :maximum => 254 }

  validates :buena ,
            :presence => true ,
            :length => { :maximum => 3 }

  validates :puntaje ,
            :presence => true ,
            :numericality => true,
            :length => { :maximum => 50 }
end
