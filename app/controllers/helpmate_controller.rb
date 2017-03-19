class HelpmateController < ApplicationController
	def index
		@pforms = Pform.all
	end
	def login

	end
	
	def newrec
		@pform = Pform.new
		
		@parents = []
		2.times do
			@parents << ParentInfo.new
		end

		@siblings = []
		4.times do
			@siblings << Sibling.new
		end
	end

	def createrec
		#Personal Information Form
		@pform = Pform.new()
		@pform.fname = params[:pform][:fname]
		@pform.mi = params[:pform][:mi]
		@pform.lname = params[:pform][:lname]
		@pform.coursemajor = params[:pform][:coursemajor]
		@pform.student_id = params[:pform][:student_id]
		@pform.year_level = params[:pform][:year_level]
		@pform.photoloc = params[:pform][:photoloc]
		@pform.perm_address = params[:pform][:perm_address]
		@pform.pres_address = params[:pform][:pres_address]
		@pform.contact_no = params[:pform][:contact_no]
		@pform.email = params[:pform][:email]
		@pform.birth_date = params[:pform][:birth_date]
		@pform.age = params[:pform][:age]
		@pform.sex = params[:pform][:sex]
		@pform.p_of_birth = params[:pform][:p_of_birth]
		@pform.nationality = params[:pform][:nationality]
		@pform.civil_stat = params[:pform][:civil_stat]
		@pform.admis_type = params[:pform][:admis_type]
		@pform.emp_name = params[:pform][:emp_name]
		@pform.emp_addr = params[:pform][:emp_addr]
		@pform.emp_cont_no = params[:pform][:emp_cont_no]
		@pform.yr_w_emp = params[:pform][:yr_w_emp]
		@pform.faveplace = params[:pform][:faveplace]
		@pform.save

		#Family background information
		parent_names = params[:names]
		parent_relates = params[:relates]
		parent_ages = params[:ages]
		parent_bdates = params[:bdates]
		parent_religions = params[:religions]
		parent_nationality = params[:nationalities]
		parent_presadds = params[:present_adds]
		parent_contactnos = params[:contact_nos]
		parent_educattain = params[:educ_attains]
		parent_occps = params[:occps]
		parent_empname = params[:emp_names]
		parent_empadd = params[:emp_addrs]
		parent_freqInters = []
		parent_freqInters << params[:freqInteracts0]
		parent_freqInters << params[:freqInteracts1]
		parent_civilstats = params[:civil_stats]

		@parents = []

		2.times do
			@parents << ParentInfo.new
		end

		x = 0
			@parents.each do |p|
				p.name = parent_names[x]
				p.relate = parent_relates[x]
				p.birth_date = parent_bdates[x]
				p.age = parent_ages[x]
				p.religion = parent_religions[x]
				p.nationality = parent_nationality[x]
				p.present_add = parent_presadds[x]
				p.educ_attain = parent_contactnos[x]
				p.occp = parent_occps[x]
				p.emp_name = parent_empname[x]
				p.emp_addr = parent_empadd[x]
				p.freqInteract = parent_freqInters[x]
				p.civil_stat = parent_civilstats[x]
				p.pform_id = @pform.id
				p.save
				x = x + 1
			end
		
		sibling_name = params[:namesib]
		sibling_age = params[:agesib]
		sibling_cstat = params[:civil_statsib]
		sibling_schooloremp = params[:schoolorempsib]
		sibling_yrlvlorocc = params[:yrlvloroccpsib]

		@siblings = []

		4.times do 
			@siblings << Sibling.new
		end

		x = 0
			@siblings.each do |s|
				s.name = sibling_name[x]
				s.age = sibling_age[x]
				s.civil_stat = sibling_cstat[x]
				s.schooloremp = sibling_schooloremp[x]
				s.yrlvloroccp = sibling_yrlvlorocc[x]
				s.pform_id = @pform.id
				s.save
				x = x + 1
			end
		redirect_to '/helpmate'


	end
end
