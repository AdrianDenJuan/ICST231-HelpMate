class Student < ApplicationRecord
	has_many :conversations
	belongs_to :user
end
