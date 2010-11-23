class Prueba < ActiveRecord::Base
  attr_accessible :name , :fch_limite , :fase_id , :aprendiz_id

  belongs_to :fase
  #belongs_to :aprendiz

  has_many :preguntas
  has_many :avances

  validates :name ,
            :presence => true ,
            :length => { :maximum => 254 }

  validates :fch_limite ,
            :presence => true 

end
