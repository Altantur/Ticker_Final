ActiveAdmin.register Product do
	form do |f|
		f.inputs "Add Categories" do
			f.object.product_categories.build
			f.fields_for :product_categories do |m|
		    	m.inputs do
		    		m.input :category_id, :required => true, :as => :select, :collection => Category.all, :wrapper_html => { :class => 'border:none' }
				end
			end
			f.has_many :product_categories, :heading => false, :new_record => true do |app_f|
  				app_f.input :category_id, :required => true, :as => :select, :collection => Category.all
			end
		end

		# :price, :address, :created_at, :updated_at, :product_id
=begin
		f.inputs "Add Location" do
			f.object.category_news.build
			f.fields_for :location do |m|
		    	m.inputs do
		    		m.input :price, :required => true, :as => :select, :wrapper_html => { :class => 'border:none' }
		    		m.input :address, :required => true, :as => :select, :wrapper_html => { :class => 'border:none' }
				end
			end
			f.has_many :location, :heading => false, :new_record => true do |app_f|
  				app_f.input :price, :required => true, :as => :select
  				app_f.input :address, :required => true, :as => :select
			end
		end
=end
		f.inputs "Release Date"  do
			f.input :release_date, :required => true
		end
		f.inputs "Name"  do
			f.input :name, :required => true
		end
		f.inputs "Value"  do
			f.input :value, :required => true
		end
		f.actions
	end
end
