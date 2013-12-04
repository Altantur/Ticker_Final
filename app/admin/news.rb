ActiveAdmin.register News do
	form do |f|
		f.inputs "Title"  do
			f.input :title
		end
		f.inputs "Body"  do
			f.input :body
		end
		f.actions
	end
end
