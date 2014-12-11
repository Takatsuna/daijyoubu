class Partnermember < ActiveRecord::Base
  belongs_to :partner
  has_many :youinwariates
end
