ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :avatar

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :avatar_file_name
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form multipart: true do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :avatar, as: :file,required: false
    end
    f.actions
  end

end
