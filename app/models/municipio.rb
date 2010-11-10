class Municipio < ActiveRecord::Base
  attr_accessible :name , :departamento_id

  belongs_to :departamento

  has_many :aprendices

  validates :name ,
            :presence => true ,
            :length => { :maximum => 80 }

  #acts_as_chainable :select_label => 'Model', :from => :departamento

          
end
