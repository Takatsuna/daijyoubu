class Sagyouhoukoku < ActiveRecord::Base
  has_one :sagyoushiji
  has_one :sagyoukakunin
end
