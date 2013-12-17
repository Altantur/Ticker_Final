ActiveAdmin.register Product do
	menu :parent => "Product"
	form do |f|
		f.inputs "Add Locations" do
			f.object.product_locations.build
			f.fields_for :product_locations do |m|
		    	m.inputs do
		    		m.input :location_id, :required => true, :as => :select, :collection => Location.all, :wrapper_html => { :class => 'border:none' }
					
				end
			end
			f.has_many :product_locations, :heading => false, :new_record => true do |app_f|
  				app_f.input :location_id, :required => true, :as => :select, :collection => Location.all
			app_f.input :price
			end
		end

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

		
		f.inputs "Add product"  do
			f.input :name
			f.input :image_path, :as => :file
		end		
		f.actions
	end

end
