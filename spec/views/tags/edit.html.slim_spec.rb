require 'rails_helper'

RSpec.describe "tags/edit", type: :view do
  before(:each) do
    @tag = assign(:tag, Tag.create!(
      texto: "MyString",
      tweet: ""
    ))
  end

  it "renders the edit tag form" do
    render

    assert_select "form[action=?][method=?]", tag_path(@tag), "post" do

      assert_select "input[name=?]", "tag[texto]"

      assert_select "input[name=?]", "tag[tweet]"
    end
  end
end
