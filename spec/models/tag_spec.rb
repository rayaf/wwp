require 'rails_helper'

RSpec.describe Tag, type: :model do
  it { should have_many(:tag_tweets) }
  it { should have_many(:tweets).through(:tag_tweets) }
  it { is_expected.to validate_presence_of(:texto)}
end
