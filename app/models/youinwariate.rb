class Youinwariate < ActiveRecord::Base
  belongs_to :itakuhaken
  belongs_to :partnermember
  has_many :youinjissekis
  
end
