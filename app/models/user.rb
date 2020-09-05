class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets, dependent: :destroy

  has_many :seguidor_relacionamentos, class_name: 'Relacionamento', foreign_key: :seguido_id
  has_many :seguidors, through: :seguidor_relacionamentos

  has_many :seguido_relacionamentos, class_name: 'Relacionamento', foreign_key: :seguidor_id
  has_many :seguidos, through: :seguido_relacionamentos

  validates :telefone, :email, :username, uniqueness: true
  validates :nome, :data_de_nascimento, :email, :telefone, presence: true

  def seguir(user)
    seguidors << user if !self.seguindo?(user) && self != user
  end

  def deixar_de_seguir(user)
    seguidors.delete(user)
  end

  def seguindo?(user)
    seguidors.include?(user)
  end

  def feed
    seguidores_ids = "SELECT seguido_id FROM relationships WHERE  seguidor_id = :user_id"

    Tweet.where("user_id IN (#{seguidores_ids}) OR user_id = :user_id", user_id: id)
  end

end
