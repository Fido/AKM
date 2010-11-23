class Final < ActiveRecord::Base
  attr_accessible :totales , :equipo_id

  belongs_to :equipo

  has_many :avances

  validates :totales ,
            :presence => true

end
