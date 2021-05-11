class Target < ApplicationRecord
    belongs_to :user
    has_many :courses
    has_many :inscricaos
end
