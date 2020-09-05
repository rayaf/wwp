require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it { is_expected.to validate_presence_of(:data_de_nascimento)}
  it { is_expected.to allow_value('ray@email.com').for(:email)}
  it { is_expected.to allow_value('01/01/2020').for(:data_de_nascimento)}
  it { is_expected.to validate_confirmation_of(:password)}

  it { is_expected.to have_many(:tweets).dependent(:destroy) }
  it { is_expected.to have_many(:seguidor_relacionamentos).class_name('Relacionamento').with_foreign_key(:seguidor_id)}
  it { is_expected.to have_many(:seguidors).through(:seguidor_relacionamentos)}
  it { is_expected.to have_many(:seguido_relacionamentos).class_name('Relacionamento').with_foreign_key(:seguido_id)}
  it { is_expected.to have_many(:seguidos).through(:seguido_relacionamentos)}

end
