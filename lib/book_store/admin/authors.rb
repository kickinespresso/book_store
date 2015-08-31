if defined?(ActiveAdmin)
  ActiveAdmin.register  BookStore::Author, as: 'Author' do
    # customize your resource here

    form do |f|
      f.semantic_errors # shows errors on :base
      f.inputs   do
        f.input :name
        f.input :lead
        f.input :short_description
        f.input :description
        f.input :website_link
        f.input :email_link
        f.input :facebook_link
        f.input :twitter_link

      end

      f.inputs "Avatar Image", :multipart => true do
        f.input :avatar_image, :as => :file, :hint => f.object.avatar_image.present? ? image_tag(f.object.avatar_image.url(:thumb)) : content_tag(:span, "no avatar image yet")
        f.input :avatar_image_cache, :as => :hidden
      end


      f.actions         # adds the 'Submit' and 'Cancel' buttons
    end
    permit_params :name, :description, :slug, :website_link, :email_link, :facebook_link, :twitter_link, :lead, :short_description, :avatar, :avatar_image_cache
  end
end

