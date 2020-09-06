require 'rails_helper'

RSpec.describe "comentarios/edit", type: :view do
  before(:each) do
    @comentario = assign(:comentario, Comentario.create!(
      comentario: "MyString",
      tweet: nil,
      user: nil
    ))
  end

  it "renders the edit comentario form" do
    render

    assert_select "form[action=?][method=?]", comentario_path(@comentario), "post" do

      assert_select "input[name=?]", "comentario[comentario]"

      assert_select "input[name=?]", "comentario[tweet_id]"

      assert_select "input[name=?]", "comentario[user_id]"
    end
  end
end
