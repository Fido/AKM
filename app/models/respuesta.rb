class Respuesta < ActiveRecord::Base
  attr_accessible :respuesta , :letra

  belongs_to :pregunta

  has_many :resultados

  validates :respuesta ,
            :presence => true ,
            :length => { :maximum => 254 }

  validates :letra ,
            :presence => true ,
            :length => { :maximum => 3 }
end
