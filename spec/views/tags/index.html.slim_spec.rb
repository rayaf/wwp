require 'rails_helper'

RSpec.describe "tags/index", type: :view do
  before(:each) do
    assign(:tags, [
      Tag.create!(
        texto: "Texto",
        tweet: ""
      ),
      Tag.create!(
        texto: "Texto",
        tweet: ""
      )
    ])
  end

  it "renders a list of tags" do
    render
    assert_select "tr>td", text: "Texto".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
