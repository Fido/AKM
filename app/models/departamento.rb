class Departamento < ActiveRecord::Base
  attr_accessible :name

  belongs_to :pais

  has_many :municipios#, :dependent => :destroy

  #acts_as_chainable :to => :municipio, :from => :pais

  validates :name ,
            :presence => true ,
            :length => { :maximum => 80 }

end
