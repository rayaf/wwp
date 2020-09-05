require 'rails_helper'

RSpec.describe TagTweet, type: :model do

  it { should belong_to(:tweet) }
  it { should belong_to(:tag) }

end
