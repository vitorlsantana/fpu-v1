class Course < ApplicationRecord
    has_many :targets
  
    validates :nome, presence: true
end
