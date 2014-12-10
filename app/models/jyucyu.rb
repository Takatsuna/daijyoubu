class Jyucyu < ActiveRecord::Base
	belongs_to :kokyaku
	has_many :itakuhakens
end
