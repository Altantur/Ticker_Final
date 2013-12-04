ActiveAdmin.register Ads do

index do
	column :value
	column :created_at
	column :updated_at
	default_actions
end

  form do |f|
    f.inputs "Ads Details" do
      f.input :value
    end
    f.actions
  end

end
