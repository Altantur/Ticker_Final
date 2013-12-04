ActiveAdmin.register Location do
  form do |f|
    f.inputs "Product Details" do
      f.input :address
      f.input :price
    end
    
    f.actions
  end
end
