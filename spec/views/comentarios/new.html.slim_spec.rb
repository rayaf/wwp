require 'rails_helper'

RSpec.describe "comentarios/new", type: :view do
  before(:each) do
    assign(:comentario, Comentario.new(
      comentario: "MyString",
      tweet: nil,
      user: nil
    ))
  end

  it "renders new comentario form" do
    render

    assert_select "form[action=?][method=?]", comentarios_path, "post" do

      assert_select "input[name=?]", "comentario[comentario]"

      assert_select "input[name=?]", "comentario[tweet_id]"

      assert_select "input[name=?]", "comentario[user_id]"
    end
  end
end
