ActiveAdmin.register Poll do
	menu :parent => "Poll"
	form do |f|
		f.inputs "Poll Details" do
			f.input :value
		end
		f.inputs "Add Answers" do
		f.object.answers.build
			f.fields_for :answers do |m|
		    	m.inputs do
		    		#m.input :poll_id, :required => true, :as => :select, :collection => Answer.all, :wrapper_html => { :class => 'border:none' }
					m.input :value
				end
			end
		f.has_many :answers, :heading => false, :new_record => true do |app_f|
  			#app_f.input :poll_id, :required => true, :as => :select, :collection => Answer.all
			app_f.input :value
		end
	end
		f.actions
	end
end
