class Conversation < ApplicationRecord
	belongs_to :student
	has_many :replies
end
