class Programa < ActiveRecord::Base
  attr_accessible :codigo , :name

  has_many :programas_responsables

  validates :codigo ,
            :presence => true ,
            :numericality => true,
            :length => { :maximum => 30 }

  validates :name ,
            :presence => true ,
            :length => { :maximum => 254 }

end
