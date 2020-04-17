class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_secure_password()
    acts_as_voter

    validate do
        if self.name.chomp == ""
            self.errors.add(:name, 'must exist')
        elsif
            self.password == ""
            self.errors.add(:password, 'must exist')
        elsif
            self.email.chomp == ""
            self.errors.add(:email, 'must exist')
        end
    end
end