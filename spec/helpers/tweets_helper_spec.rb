require 'rails_helper'

RSpec.describe TweetsHelper, type: :helper do

  describe "tweet_com_tags" do
     it "sem tags" do
       expect(helper.tweet_com_tags("tweet")).to eq("tweet")
     end
     it "sem tags" do
       expect(helper.tweet_com_tags("tweet #teste")).to eq("tweet <a href=\"/tags/teste\">#teste</a>")
     end
   end
end
