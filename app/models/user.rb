class User < ApplicationRecord
    has_many :projects
    has_many :posts
    has many :projects, through: :posts
    has_many :comments
    has_many :posts, through: :comments
end