class HelpmateController < ApplicationController
	def index
		@users = User.new
	end
	def error

	end

	def register
		@users = User.new
		@students = Student.new
		@councilor = Councilor.new
	end

	def createuser
		@users = User.new
		@students = Student.new
		@councilor = Councilor.new

		@users.username = params[:user][:username]
		@users.password = params[:user][:password]
		@users.user_type = params[:user][:user_type]
		@users.save

		if(@users.user_type == "student") then
			@students.fname = params[:fname]
			@students.mi = params[:mi]
			@students.lname = params[:lname]
			@students.user_id = @users.id
			@students.save
		
		elsif(@users.user_type = "staff") then
			@councilor.fname = params[:fname]
			@councilor.mi = params[:mi]
			@councilor.lname = params[:lname]
			@councilor.department = params[:department]
			@councilor.user_id = @users.id
			@councilor.save
	end

		redirect_to '/helpmate'
	end

	def concern
	end
	def identify
		@users = User.new
		@users = User.where("username = ? and password = ?", params[:username], params[:password])
		@users = @users.first
		if(@users.present?)
			if(@users.user_type == "student")
				redirect_to "/helpmate/student/#{@users.id}"
			elsif(@users.user_type == "staff")
				redirect_to "/helpmate/staff/#{@users.id}"
			end
		else
			redirect_to "/helpmate/error"
		end

	end

	def student
        @user = User.new
        @user = User.find(params[:id])
    end
	def staff
		@user = User.new
		@user = User.find(params[:id])
	end

	def newrec
		@user = User.new
		@user = User.find(params[:hereid])
		@pform = Pform.new
		
		@parents = []
		2.times do
			@parents << ParentInfo.new
		end

		@siblings = []
		4.times do
			@siblings << Sibling.new
		end

		@educ = []
		3.times do
			@educ << EducInfo.new
		end

	end

	def createrec
		@users = User.new
		@users = User.find(params[:usr_id])
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
		@pform.student_id = params[:stu_id]
		@pform.nationality = params[:pform][:nationality]
		@pform.civil_stat = params[:pform][:civil_stat]
		@pform.admis_type = params[:pform][:admis_type]
		@pform.emp_name = params[:pform][:emp_name]
		@pform.emp_addr = params[:pform][:emp_addr]
		@pform.emp_cont_no = params[:pform][:emp_cont_no]
		@pform.yr_w_emp = params[:pform][:yr_w_emp]
		@pform.faveplace = params[:pform][:faveplace]
		@pform.save

		@contact_emergs = ContactEmerg.new()
		@contact_emergs.name = params[:name]
		@contact_emergs.relate = params[:relate]
		@contact_emergs.addr = params[:addr]
		@contact_emergs.contact_no = params[:contact_no]
		@contact_emergs.email_add = params[:email_add]
		@contact_emergs.pform_id = @pform.id
		@contact_emergs.save

		@other_infos = OtherInfo.new()
		@other_infos.n_condition = params[:condition]
		@other_infos.condition_temp = params[:con]
		@other_infos.pform_id = @pform.id
		@other_infos.save	

		@educ = []
		3.times do
			@educ << EducInfo.new
		end

		educ_yrG = params[:yr_grads]
		educ_addr = params[:school_addrs]
		educ_RecAward = params[:recogawardS]

		ei = 0
		@educ.each do |e|
			e.yr_grad = educ_yrG[ei]
			e.school_addr = educ_addr[ei]

			if ei == 0
				e.educ_type = "Elementary"
			elsif ei == 1
				e.educ_type = "Secondary"
			else
				e.educ_type = "Senior High School"
			end 
			e.recogawards = educ_RecAward[ei]
			e.pform_id = @pform.id
			e.save
			ei = ei + 1
		end

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

			if(@users.user_type == "student")
				redirect_to "/helpmate/student/#{@users.id}"
			elsif(@users.user_type == "staff")
				redirect_to "/helpmate/staff/#{@users.id}"
			end

	end
end
