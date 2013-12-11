ActiveAdmin.register Answer do
	menu :parent => "Poll"
	form do |f| 
		f.inputs "Answer Detail" do
			f.input :value
		end
		f.actions
	end	
end
