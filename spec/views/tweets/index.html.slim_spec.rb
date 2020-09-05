require 'rails_helper'

RSpec.describe "tweets/index", type: :view do
  before(:each) do
    assign(:tweets, [
      Tweet.create!(
        texto: "Texto",
        user: nil
      ),
      Tweet.create!(
        texto: "Texto",
        user: nil
      )
    ])
  end

  it "renders a list of tweets" do
    render
    assert_select "tr>td", text: "Texto".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
