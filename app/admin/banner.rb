ActiveAdmin.register Banner do
  permit_params :image1, :image2, :image3

  index do
    selectable_column
    id_column
    column :image1_file_name
    column :image2_file_name
    column :image3_file_name
    column :created_at
    column :updated_at
    actions
  end

  filter :updated_at

  form multipart: true do |f|
    f.inputs "Admin Details" do
      f.input :image1, label: 'Image 1', as: :file,required: false
      f.input :image2, label: 'Image 2', as: :file,required: false
      f.input :image3, label: 'Image 3', as: :file,required: false
    end
    f.actions
  end

end
