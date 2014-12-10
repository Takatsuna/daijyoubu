class Jyucyu < ActiveRecord::Base
	belongs_to :kokyaku
  belongs_to :busyo
	has_many :itakuhakens
end
