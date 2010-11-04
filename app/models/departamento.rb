class Departamento < ActiveRecord::Base
  attr_accessible :name

  belongs_to :pais

  has_many :municipios

  validates :name ,
            :presence => true ,
            :length => { :maximum => 80 }

end
