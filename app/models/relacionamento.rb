class Relacionamento < ApplicationRecord

  belongs_to :seguidor, class_name: 'User'
  belongs_to :seguido, class_name: 'User'

end
