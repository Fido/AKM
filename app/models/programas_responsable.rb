class ProgramasResponsable < ActiveRecord::Base

  belongs_to :instructor
  belongs_to :programa

end
