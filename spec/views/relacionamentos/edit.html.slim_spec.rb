require 'rails_helper'

RSpec.describe "relacionamentos/edit", type: :view do
  before(:each) do
    @relacionamento = assign(:relacionamento, Relacionamento.create!(
      seguidor: "",
      seguido: ""
    ))
  end

  it "renders the edit relacionamento form" do
    render

    assert_select "form[action=?][method=?]", relacionamento_path(@relacionamento), "post" do

      assert_select "input[name=?]", "relacionamento[seguidor]"

      assert_select "input[name=?]", "relacionamento[seguido]"
    end
  end
end
