ActiveAdmin.register StaticPage do
  form do |f|
    f.inputs "Static pages Details" do
      f.input :title
      f.input :content
      f.input :image_path, :as => :file
    end
    f.actions
  end
end
