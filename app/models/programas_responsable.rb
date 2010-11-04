class ProgramasResponsable < ActiveRecord::Base
  belongs_to :instructor , :programa
end
