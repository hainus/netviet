ActiveAdmin.register Portfolio do
  permit_params :name, :catgory, :small_image, :large_image, :pdf


  index do
    selectable_column
    id_column
    column :name
    column :catgory
    column :small_image_file_name
    column :large_image_file_name
    column :pdf_file_name
    column :created_at
    column :updated_at
    actions
  end

  filter :catgory
  filter :sign_in_count
  filter :updated_at

  form multipart: true do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :catgory, label: 'Catgory', as: :select, collection: Portfolio.catgories.keys, include_blank: false
      f.input :small_image, label: 'Small Image', as: :file,required: false
      f.input :large_image, label: 'Large Image', as: :file,required: false
      f.input :pdf, as: :file,required: false
    end
    f.actions
  end
end
