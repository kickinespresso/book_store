if defined?(ActiveAdmin)
  ActiveAdmin.register  BookStore::Author, as: 'Author' do
    # customize your resource here
    permit_params :name, :description, :slug
  end
end