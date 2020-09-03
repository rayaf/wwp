require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it { is_expected.to validate_presence_of(:data_de_nascimento)}
  it { is_expected.to allow_value('ray@email.com').for(:email)}
  it { is_expected.to allow_value('01/01/2020').for(:data_de_nascimento)}
  it { is_expected.to validate_confirmation_of(:password)}

end
