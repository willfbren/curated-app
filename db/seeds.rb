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

5.times do
    User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
end

5.times do
    Project.create(title: Faker::App.name, description: Faker::Company.catch_phrase, user_id: User.all.sample().id)
end

5.times do
    Category.create(name: Faker::Commerce.department)
end

Post.create(
    title: Faker::TvShows::SiliconValley.app,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    user_id: User.all.sample().id,
    project_id: Project.all.sample().id,
    category_id: Category.all.sample().id,
    image_url: "https://cdn.dribbble.com/users/4859/screenshots/11037158/media/4457134114c740b6c2fe1cab5986bced.png"
)

Post.create(
    title: Faker::TvShows::SiliconValley.app,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    user_id: User.all.sample().id,
    project_id: Project.all.sample().id,
    category_id: Category.all.sample().id,
    image_url: "https://cdn.dribbble.com/users/476559/screenshots/11048800/media/94bdee0e0186195b53f020e7c4378cf6.png"
)

Post.create(
    title: Faker::TvShows::SiliconValley.app,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    user_id: User.all.sample().id,
    project_id: Project.all.sample().id,
    category_id: Category.all.sample().id,
    image_url: "https://cdn.dribbble.com/users/757683/screenshots/10976763/media/7fa680b9d5dacd81352ddac655b92c36.jpg"
)

Post.create(
    title: Faker::TvShows::SiliconValley.app,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    user_id: User.all.sample().id,
    project_id: Project.all.sample().id,
    category_id: Category.all.sample().id,
    image_url: "https://cdn.dribbble.com/users/26642/screenshots/11047700/media/6b93d2d5ce223081e51de4ababd02cf5.png"
)

Post.create(
    title: Faker::TvShows::SiliconValley.app,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    user_id: User.all.sample().id,
    project_id: Project.all.sample().id,
    category_id: Category.all.sample().id,
    image_url: "https://cdn.dribbble.com/users/4593/screenshots/11042762/media/d23309c7545f8419f4caec632a0c7cc1.jpg"
)

7.times do
    Comment.create(
        content: Faker::TvShows::MichaelScott.quote,
        user_id: User.all.sample().id,
        post_id: Post.all.sample().id
    )
end