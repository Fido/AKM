class Instructor < ActiveRecord::Base
  attr_accessible :cedula , :nombre , :email

  has_many :programas_responsables

  validates :cedula ,
            :presence => true ,
            :numericality => true,
            :length => { :maximum => 30 }

  validates :nombre ,
            :presence => true ,
            :length => { :maximum => 30 }

  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

end
