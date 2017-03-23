class Pform < ApplicationRecord
	has_many :siblings
	has_one :contact_emerg
	has_one :spouse
	has_many :educ_infos
	has_many :children
	has_many :parent_infos 
	has_one :other_info
end
