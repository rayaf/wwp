require 'rails_helper'

RSpec.describe "comentarios/index", type: :view do
  before(:each) do
    assign(:comentarios, [
      Comentario.create!(
        comentario: "Comentario",
        tweet: nil,
        user: nil
      ),
      Comentario.create!(
        comentario: "Comentario",
        tweet: nil,
        user: nil
      )
    ])
  end

  it "renders a list of comentarios" do
    render
    assert_select "tr>td", text: "Comentario".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
