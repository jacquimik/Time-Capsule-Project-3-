# == Schema Information
#
# Table name: children
#
#  id            :integer          not null, primary key
#  firstname     :string(255)
#  middlename    :string(255)
#  lastname      :string(255)
#  date_of_birth :datetime
#  gender        :string(255)
#  eye_color     :string(255)
#  image         :text
#  user_id       :integer
#

class Child < ActiveRecord::Base
	belongs_to :user

	has_many :events

	validates :gender, inclusion: { in: %w(Female Male) }
	validates :eye_color, inclusion: { in: %w(Blue Green Hazel Brown) }

end
