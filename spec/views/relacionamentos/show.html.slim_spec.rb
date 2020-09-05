require 'rails_helper'

RSpec.describe "relacionamentos/show", type: :view do
  before(:each) do
    @relacionamento = assign(:relacionamento, Relacionamento.create!(
      seguidor: "",
      seguido: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
