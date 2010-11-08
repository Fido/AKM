class Pais < ActiveRecord::Base
  attr_accessible :name , :sigla

  has_many :departamentos#, :dependent => :destroy

  validates :name ,
            :presence => true,
            :length => { :maximum => 80 }

  #acts_as_chainable :to => :departamento, :root => true

  validates :sigla ,
            :presence => true,
            :length => { :maximum => 10 }
end
