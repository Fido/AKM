class Departamento < ActiveRecord::Base
  attr_accessible :name , :pais_id

  belongs_to :pais

  has_many :municipios#, :dependent => :destroy

  #acts_as_chainable :to => :municipio, :from => :pais

  validates :name ,
            :presence => true ,
            :length => { :maximum => 80 }

  validates :pais_id ,
            :presence => true 

end
