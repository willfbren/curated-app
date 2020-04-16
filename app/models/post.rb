class Post < ApplicationRecord
    belongs_to :user
    belongs_to :project
    belongs_to :category

    validate do
        if self.title.chomp == ""
            self.errors.add(:title, 'must exist!')
        elsif
            self.description.chomp == ""
            self.errors.add(:description, 'must exist!')
        elsif
            self.user_id == nil
            self.errors.add(:user_id, 'must exist!')
        elsif
            self.project == nil
            self.errors.add(:project, 'must exist!')
        elsif
            self.category == nil
            self.errors.add(:category, 'must exist!')
        elsif
            self.image_url.chomp == ""
            self.errors.add(:image_url, 'must exist!')
        end
    end
end