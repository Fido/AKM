class Pais < ActiveRecord::Base
  attr_accessible :name , :sigla

  has_many :departamentos

  validates :name ,
            :presence => true ,
            :length => { :maximum => 80 }

  validates :sigla ,
            :presence => true ,
            :length => { :maximum => 10 }
end
