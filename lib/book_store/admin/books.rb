if defined?(ActiveAdmin)
  ActiveAdmin.register  BookStore::Book, as: 'Book' do
    # customize your resource here
    form do |f|
      f.semantic_errors # shows errors on :base
      f.inputs   do
        f.input :author
        f.input :category
        f.input :title
        f.input :lead
        f.input :excerpt
        f.input :description
        f.input :price
        f.input :num_pages
        f.input :size
        f.input :isbn
        f.input :cover_type, as: :select, collection:  BookStore::Book.cover_types.keys
      end
      f.actions         # adds the 'Submit' and 'Cancel' buttons
    end
    permit_params :name, :lead, :excerpt, :description, :price, :slug, :cover_type, :isbn, :num_pages, :size, :cover_image, :author, :category
  end
end