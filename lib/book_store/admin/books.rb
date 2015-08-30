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
        f.input :featured
        f.input :position
        f.input :price
        f.input :num_pages
        f.input :size
        f.input :isbn
        f.input :cover_type, as: :select, collection:  BookStore::Book.cover_types.keys
        #f.input :cover_image, :as => :file
        #f.input :featured_image, :as => :file

      end

      f.inputs "Book Cover Image", :multipart => true do
        f.input :cover_image, :as => :file, :hint => f.object.cover_image.present? ? image_tag(f.object.cover_image.url(:thumb)) : content_tag(:span, "no cover image yet")
        f.input :cover_image_cache, :as => :hidden
      end
      f.inputs "Featured Image", :multipart => true do
        f.input :featured_image, :as => :file, :hint => f.object.featured_image.present? ? image_tag(f.object.featured_image.url(:thumb)) : content_tag(:span, "no featured image yet")
        f.input :featured_image_cache, :as => :hidden
      end
      f.actions         # adds the 'Submit' and 'Cancel' buttons
    end
    permit_params :title, :lead, :excerpt, :description, :price, :slug, :cover_type, :isbn, :num_pages, :size, :featured_image, :position, :featured, :cover_image, :author, :category,:author_id, :category_id, :cover_image_cache, :featured_image_cache
  end
end