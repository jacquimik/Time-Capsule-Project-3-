# == Schema Information
#
# Table name: attachments
#
#  id       :integer          not null, primary key
#  name     :string(255)
#  url      :string(255)
#  event_id :integer
#

class Attachment < ActiveRecord::Base
	belongs_to :event
end
