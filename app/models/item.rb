class Item < ActiveRecord::Base
	belongs_to :list
	validates_presence_of :content
end

# == Schema Information
#
# Table name: items
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

