class Task < ActiveRecord::Base
	belongs_to :list
	validates_presence_of :content
end


# == Schema Information
#
# Table name: tasks
#
#  id         :integer         not null, primary key
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

