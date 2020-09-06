require 'rails_helper'

RSpec.describe "comentarios/show", type: :view do
  before(:each) do
    @comentario = assign(:comentario, Comentario.create!(
      comentario: "Comentario",
      tweet: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Comentario/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
