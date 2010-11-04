class Resultado < ActiveRecord::Base
  belongs_to :equipo

  has_one :respuesta
end
