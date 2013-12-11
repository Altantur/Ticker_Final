ActiveAdmin.register Ads do
menu :parent => "Administration"
index do
	column :value
	column :created_at
	column :updated_at
	default_actions
end

  form do |f|
    f.inputs "Ads Details" do
      f.input :value
      f.input :image_path, :as => :file
    end
    f.actions
  end

end
