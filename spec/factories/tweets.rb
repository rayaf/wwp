FactoryBot.define do
  factory :tweet do
    user { create(:user) }
  end

  trait :sem_tag do
    texto { "tweet" }
  end

  trait :com_tag do
    texto { "tweet #test" }
  end

end
