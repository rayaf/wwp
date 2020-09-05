class Tag < ApplicationRecord

  has_many :tag_tweets
  has_many :tweets, through:  :tag_tweets

  validates_presence_of :texto

end
