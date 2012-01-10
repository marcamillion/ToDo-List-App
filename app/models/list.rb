class List < ActiveRecord::Base
	has_many :items, :dependent => :destroy
	accepts_nested_attributes_for	:items
end


# == Schema Information
#
# Table name: lists
#
#  id         :integer         not null, primary key
#  item       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

