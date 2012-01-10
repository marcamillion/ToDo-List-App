class List < ActiveRecord::Base
	has_many :tasks, :dependent => :destroy
	accepts_nested_attributes_for	:tasks
	
	validates_presence_of :name
end


# == Schema Information
#
# Table name: lists
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

