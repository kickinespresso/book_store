if defined?(ActiveAdmin)
  ActiveAdmin.register  BookStore::Book, as: 'Book' do

    index do
      selectable_column
      column :title
      column :category
      column :author
      column :year
      column :position
      column :featured
      actions
    end

    # customize your resource here
    form do |f|
      f.semantic_errors # shows errors on :base
      f.inputs "Contributors" do
        f.has_many :contributors, :allow_destroy => true do |s|
          s.input :author
          s.input :role, :as => :select, :collection => BookStore::Contributor.roles.keys
        end
      end
      f.inputs   do
        f.input :category
        f.input :title
        f.input :lead
        f.input :excerpt
        f.cktext_area :description
        f.input :featured
        f.input :position
        f.input :price
        f.input :num_pages
        f.input :size
        f.input :isbn
        f.input :year
        f.input :buy_link
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

      f.inputs "Reviews" do
        f.has_many :reviews, allow_destroy: true do |b|
          b.input :content
          b.input :name
          b.input :publication
        end
      end

      f.actions         # adds the 'Submit' and 'Cancel' buttons
    end
    permit_params :title, :lead, :excerpt, :description, :price, :slug, :cover_type, :isbn, :num_pages, :size, :buy_link, :year, :featured_image, :position, :featured, :cover_image, :author, :category,:author_id, :category_id, :cover_image_cache, :featured_image_cache, contributors_attributes: [:id, :book_id, :author_id, :role, :_destroy => true], reviews_attributes: [:id, :content, :name, :publication, :book_id, :_destroy => true]


  end
end