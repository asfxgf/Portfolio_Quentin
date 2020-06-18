ActiveAdmin.register Video do
  permit_params :title, :description, :url, :picture
end
