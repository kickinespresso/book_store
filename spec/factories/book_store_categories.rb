FactoryGirl.define do
  factory :book_store_category, :class => 'BookStore::Category' do
    title "MyString"
    description "MyText"
    slug "MyString"
  end

end
