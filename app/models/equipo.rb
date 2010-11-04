class Equipo < ActiveRecord::Base
  attr_accessible :name

  has_many :aprendices , :finales , :resultados

  validates :name ,
            :presence => true ,
            :length => { :maximum => 20 }
end
