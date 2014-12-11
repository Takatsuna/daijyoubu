class Sagyoushiji < ActiveRecord::Base
  belongs_to :itakuhaken
  has_one :sagyouhoukoku
end
