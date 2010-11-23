class Equipo < ActiveRecord::Base
  attr_accessible :name

  has_many :aprendices
  #has_many :finales
  has_many :resultados
  has_one :final
  
  validates :name ,
            :presence => true ,
            :uniqueness => true,
            :format => { :with => /[A-Za-z\s]/ },
            :length => { :maximum => 70 }
end
