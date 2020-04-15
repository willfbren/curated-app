class User < ApplicationRecord
    has_many :posts
    has_many :projects, through: :posts
    has_many :projects
    has_many :comments
    has_secure_password()
end