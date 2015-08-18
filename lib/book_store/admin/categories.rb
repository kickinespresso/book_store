if defined?(ActiveAdmin)
  ActiveAdmin.register  BookStore::Category, as: "Category" do
    # customize your resource here

    permit_params :title, :description, :slug

  end
end