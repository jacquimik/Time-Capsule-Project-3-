# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  date        :datetime
#  location    :string(255)
#  description :text
#  child_id    :integer
#  longitude   :float
#  latitude    :float
#

class Event < ActiveRecord::Base
	belongs_to :child
	has_many :attachments
end
