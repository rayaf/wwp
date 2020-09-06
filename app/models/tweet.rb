class Tweet < ApplicationRecord

  has_many :tag_tweets, dependent: :destroy
  has_many :tags, through: :tag_tweets

  has_many :likes, dependent: :destroy
  has_many :comentarios, dependent: :destroy

  belongs_to :user

  validates_presence_of :texto

  after_create do
    tweet = Tweet.find(self.id)
    hashtags = tweet.texto.scan(/#\w+\b/)
    unless hashtags == []
      hashtags.uniq.map do |hashtag|
        tag = Tag.find_or_initialize_by(texto: hashtag.downcase.delete('#'))
        tweet.tags << tag
      end
    end
  end

end
