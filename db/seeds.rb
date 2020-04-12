# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Project.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all

10.times do
    User.create(name: Faker::Name.name)
end

10.times do
    Project.create(title: Faker::App.name, description: Faker::Company.catch_phrase, user_id: User.all.sample().id)
end

15.times do
    Category.create(name: Faker::Commerce.department)
end

20.times do
    Post.create(
        title: Faker::TvShows::SiliconValley.app,
        description: Faker::Lorem.sentences(),
        user_id: User.all.sample().id,
        project_id: Project.all.sample().id,
        category_id: Category.all.sample().id,
        image_url: Faker::LoremFlickr.image(size: "800x800", search_terms: ['design'])
    )
end

15.times do
    Comment.create(
        content: Faker::TvShows::MichaelScott.quote,
        user_id: User.all.sample().id,
        post_id: Post.all.sample().id
    )
end