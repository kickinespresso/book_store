require 'rails_helper'

RSpec.describe "authors/edit", type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :name => "MyString",
      :description => "MyText",
      :slug => "MyString"
    ))
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do

      assert_select "input#author_name[name=?]", "author[name]"

      assert_select "textarea#author_description[name=?]", "author[description]"

      assert_select "input#author_slug[name=?]", "author[slug]"
    end
  end
end
