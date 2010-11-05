class Avance < ActiveRecord::Base

  attr_accessible :prueba , :final

  belongs_to :prueba
  belongs_to :final
  
end
