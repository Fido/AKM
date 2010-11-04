class Fase < ActiveRecord::Base
  attr_accessible :name

  has_many :pruebas

  validates :name ,
            :presence => true ,
            :length => { :maximum => 30 }

end
