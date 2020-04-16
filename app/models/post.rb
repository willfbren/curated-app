class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category
    is_impressionable

    validate do
        if self.title.chomp == ""
            self.errors.add(:title, 'cannot be empty!')
        elsif
            self.description.chomp == ""
            self.errors.add(:description, 'cannot be empty!')
        elsif
            self.user_id == nil
            self.errors.add(:user_id, 'cannot be empty!')
        elsif
            self.category == nil
            self.errors.add(:category, 'cannot be empty!')
        elsif
            self.image_url.chomp == ""
            self.errors.add(:image_url, 'cannot be empty!')
        end
    end
end