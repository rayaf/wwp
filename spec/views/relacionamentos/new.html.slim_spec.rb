require 'rails_helper'

RSpec.describe "relacionamentos/new", type: :view do
  before(:each) do
    assign(:relacionamento, Relacionamento.new(
      seguidor: "",
      seguido: ""
    ))
  end

  it "renders new relacionamento form" do
    render

    assert_select "form[action=?][method=?]", relacionamentos_path, "post" do

      assert_select "input[name=?]", "relacionamento[seguidor]"

      assert_select "input[name=?]", "relacionamento[seguido]"
    end
  end
end
