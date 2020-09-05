require 'rails_helper'

RSpec.describe Tweet, type: :model do

  it { should have_many(:tag_tweets).dependent(:destroy) }
  it { should have_many(:tags).through(:tag_tweets) }
  it { should belong_to(:user) }
  it { is_expected.to validate_presence_of(:texto)}


  context "after_create" do
    it "quando ouver tag" do
      tweet = create(:tweet, :com_tag)
      expect(tweet.tags).not_to be_empty
    end
    it "quando não ouver tag" do
      tweet = create(:tweet, :sem_tag)
      expect(tweet.tags).to be_empty
    end
  end


end
