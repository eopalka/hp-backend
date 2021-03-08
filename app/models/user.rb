class User < ApplicationRecord
    has_many :duels
    validates :name, :house, presence: true
end
