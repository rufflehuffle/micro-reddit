class User < ApplicationRecord
    validates :username, presence: true, length: { in: 4..12 }
    validates :email, presence: true
    validates :password, presence: true, length: { in: 6..20 }

    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
end