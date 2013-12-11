ActiveAdmin.register Location do
	menu :parent => "Product"
  form do |f|
    f.inputs "location Details" do
      f.input :address
    end

    f.actions
  end
end
