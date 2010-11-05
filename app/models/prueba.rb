class Prueba < ActiveRecord::Base
  attr_accessible :name , :fch_limite

<<<<<<< HEAD
  belongs_to :fase
  belongs_to :aprendiz

  has_many :preguntas
  has_many :avances
=======
  belongs_to :fase , :aprendiz

  has_many :preguntas , :avances
>>>>>>> 91e5d57f9089ec8ae55ea768a83e35d18f56e487

  validates :name ,
            :presence => true ,
            :length => { :maximum => 254 }

  validates :fch_limite ,
            :presence => true 

end
