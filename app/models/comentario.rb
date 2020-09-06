class Comentario < ApplicationRecord

  belongs_to :tweet
  belongs_to :user

  validates_presence_of :texto

end
