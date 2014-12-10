class Partner < ActiveRecord::Base
  has_many :itakuhakens
  has_many :partnermembers
  
end
