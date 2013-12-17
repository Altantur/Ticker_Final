ActiveAdmin.register News do
	first=true #to ensure at least one cat is present

	menu :parent => "News"
	form do |f|
		f.inputs "Add Categories" do
			if first
				f.object.category_news.build
				first=false
			end

			f.fields_for :category_news do |m|
		    	m.inputs do
		    		m.input :category_id, :required => true, :as => :select, :collection => Category.all, :wrapper_html => { :class => 'border:none' }
				end
			end
			f.has_many :category_news, :heading => false, :new_record => true do |app_f|
  				app_f.input :category_id, :required => true, :as => :select, :collection => Category.all
			end
		end
		f.inputs "Title"  do
			f.input :title, :required => true
		end
		f.inputs "Body"  do
			f.input :body, :required => true
			f.input :image_path, :as => :file
		end
		if f.object.errors.size >= 1
      		f.inputs "Errors" do
        		f.object.errors.full_messages.join('|')
        	end
      	end
		
		f.actions
	end
end
