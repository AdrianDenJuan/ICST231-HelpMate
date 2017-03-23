class Pform < ApplicationRecord
	has_many :siblings
	has_one :contact_emerg
	has_one :spouse
	has_many :educ_infos
	has_many :children
	has_many :parent_infos 
	has_one :other_info
	belongs_to :student
 	accepts_nested_attributes_for :siblings
 	accepts_nested_attributes_for :contact_emerg
 	accepts_nested_attributes_for :spouse
 	accepts_nested_attributes_for :educ_infos
 	accepts_nested_attributes_for :children
 	accepts_nested_attributes_for :parent_infos
 	accepts_nested_attributes_for :other_info
end
