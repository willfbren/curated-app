class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_secure_password()
    acts_as_voter

    validate do
        if self.name.chomp == ""
            self.errors.add(:name, 'must exist')
        elsif
            self.password_digest == nil
            self.errors.add(:password, 'must exist')
        elsif
            self.email == nil
            self.errors.add(:email, 'must exist')
        end
    end
end