require 'rails_helper'

RSpec.describe Relacionamento, type: :model do

  it { should belong_to(:seguidor) }
  it { should belong_to(:seguido) }

end
