ActiveAdmin.register Poll do
	form do |f|
		f.inputs "Poll Details" do
			f.input :value
		end
	end
end
