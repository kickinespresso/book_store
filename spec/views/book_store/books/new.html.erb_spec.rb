require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :lead => "MyString",
      :excerpt => "MyText",
      :description => "MyText",
      :price => "9.99",
      :cover_type => 1,
      :num_pages => 1,
      :isbn => "MyString",
      :year => 1,
      :buy_link => "MyString",
      :size => "MyString",
      :cover_image => "MyString",
      :slug => "MyString",
      :author => nil,
      :category => nil
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_lead[name=?]", "book[lead]"

      assert_select "textarea#book_excerpt[name=?]", "book[excerpt]"

      assert_select "textarea#book_description[name=?]", "book[description]"

      assert_select "input#book_price[name=?]", "book[price]"

      assert_select "input#book_cover_type[name=?]", "book[cover_type]"

      assert_select "input#book_num_pages[name=?]", "book[num_pages]"

      assert_select "input#book_isbn[name=?]", "book[isbn]"

      assert_select "input#book_year[name=?]", "book[year]"

      assert_select "input#book_buy_link[name=?]", "book[buy_link]"

      assert_select "input#book_size[name=?]", "book[size]"

      assert_select "input#book_cover_image[name=?]", "book[cover_image]"

      assert_select "input#book_slug[name=?]", "book[slug]"

      assert_select "input#book_author_id[name=?]", "book[author_id]"

      assert_select "input#book_category_id[name=?]", "book[category_id]"
    end
  end
end
