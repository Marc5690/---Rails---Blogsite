ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :title, :text, :daterelease, :category

csv_importable :columns => [:text, :daterelease, :category, :title],
                              :import_unique_key => :title

form do |f|
  f.inputs do
    f.input :title
    f.input :daterelease
    f.input :category
    f.input :text, :as => :ckeditor
  end
  f.actions
end

  show do
    attributes_table :text
#    active_admin_comments # Add this line for comment block
  end 

end
