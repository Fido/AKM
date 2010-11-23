class Resultado < ActiveRecord::Base
  belongs_to :equipo
  belongs_to :respuesta
end
