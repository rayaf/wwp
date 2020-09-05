FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "123456789" }
    password_confirmation { "123456789" }
    nome { Faker::Name.name }
    username { Faker::Internet.username }
    telefone { Faker::PhoneNumber.cell_phone }
    data_de_nascimento { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end
