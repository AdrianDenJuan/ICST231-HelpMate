class Reply < ApplicationRecord
	belongs_to :councilor
	belongs_to :conversation
end
