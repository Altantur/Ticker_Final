ActiveAdmin.register News do
	menu :parent => "News"
	form do |f|
		f.inputs "Add Categories" do
			f.object.category_news.build
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
		
		f.actions
	end
end
