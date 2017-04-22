ActiveAdmin.register Portfolio do
  permit_params :type_name, :category_name, :image_2, :image_1, :pdf

  index do
    selectable_column
    id_column
    column :type_name
    column :category_name
    column :image_1_file_name
    column :image_2_file_name
    column :pdf_file_name
    column :created_at
    column :updated_at
    actions
  end

  filter :type_name
  filter :category_name
  filter :sign_in_count
  filter :updated_at

  form multipart: true do |f|
    f.inputs "Admin Details" do
      f.input :type_name
      f.input :category_name
      f.input :image_1, as: :file,required: false
      f.input :image_2, as: :file,required: false
      f.input :pdf, as: :file,required: false
    end
    f.actions
  end
end
