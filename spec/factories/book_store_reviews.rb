FactoryGirl.define do
  factory :book_store_review, :class => 'BookStore::Review' do
    content "MyText"
name "MyString"
publication "MyString"
book_id 1
  end

end
