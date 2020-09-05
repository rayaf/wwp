require 'rails_helper'

RSpec.describe "tweets/edit", type: :view do
  before(:each) do
    @tweet = assign(:tweet, Tweet.create!(
      texto: "MyString",
      user: nil
    ))
  end

  it "renders the edit tweet form" do
    render

    assert_select "form[action=?][method=?]", tweet_path(@tweet), "post" do

      assert_select "input[name=?]", "tweet[texto]"

      assert_select "input[name=?]", "tweet[user_id]"
    end
  end
end
