require 'rails_helper'

RSpec.describe "tags/show", type: :view do
  before(:each) do
    @tag = assign(:tag, Tag.create!(
      texto: "Texto",
      tweet: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Texto/)
    expect(rendered).to match(//)
  end
end
