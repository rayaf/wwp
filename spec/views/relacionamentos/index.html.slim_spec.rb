require 'rails_helper'

RSpec.describe "relacionamentos/index", type: :view do
  before(:each) do
    assign(:relacionamentos, [
      Relacionamento.create!(
        seguidor: "",
        seguido: ""
      ),
      Relacionamento.create!(
        seguidor: "",
        seguido: ""
      )
    ])
  end

  it "renders a list of relacionamentos" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
