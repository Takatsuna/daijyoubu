class Itakuhaken < ActiveRecord::Base
  belongs_to :jyucyu
  belongs_to :partner
  has_many :youinwariates
  has_many :sagyoushijis
  
end
