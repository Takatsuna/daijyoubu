class Itakuhaken < ActiveRecord::Base
  belongs_to :jyucyu
  belongs_to :partner
  has_many :youinwariates
  has_many :sagyoushijis
  accepts_nested_attributes_for :sagyoushijis
  #attr_accessible :sagyoushijis_attributes
  
end
