ActiveAdmin.register Location do
	menu :parent => "Lists"
  form do |f|
    f.inputs "location Details" do
      f.input :address
    end

    f.actions
  end
end
