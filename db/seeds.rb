# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all

User.create(
    name: "Will Brennan",
    email: "willfbren@gmail.com",
    password: "password1"
)

5.times do
    User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
end

Category.create([
    { name: "Website Design" },
    { name: "Illustration" },
    { name: "Product Design" },
    { name: "Branding" },
    { name: "Typography" }
])


Post.create([
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "Designed a single fold solution for AdWords landing page for marketing team, It is related to IT Services provider, Rather than designing a long layout tried a single fold to show all services and booking option where directly user can schedule an appointment with the consultant.",
        user_id: User.all.sample().id,
        category_id: 1,
        image_url: "https://cdn.dribbble.com/users/1126935/screenshots/11079922/media/8e63415992cb540b1226a60a0a6364c4.png"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "Getshop UI Kit is made for e-commerce applications. It is compatible in many product categories related to women.",
        user_id: User.all.sample().id,
        category_id: 3,
        image_url: "https://cdn.dribbble.com/users/584216/screenshots/11066301/media/4a19b70ed1694f181336213568d3ef38.png"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "Girl walking outside and listening to music vector illustration. Young woman in casual clothes holding skateboard and going down street flat style concept.",
        user_id: User.all.sample().id,
        category_id: 2,
        image_url: "https://cdn.dribbble.com/users/992274/screenshots/11077158/media/528eacd7b4cd5da1f367182a35aba22d.jpg"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "Pandemic Illustrations are high-detailed stories about a worldwide problem. They are about medicines who struggle with the virus every day. And also about people who keep staying at home and living their lives. 30 scenes in bright colors with cute details.",
        user_id: User.all.sample().id,
        category_id: 2,
        image_url: "https://cdn.dribbble.com/users/3754218/screenshots/11076916/media/23532e86f26b5c7605f36ee26f07edac.png"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "We recently started designing the branding of **Zivmi**, an upcoming Payment App focused on easy and fast transactions. There will be much more cool stuff to share about this project soon, but in the meanwhile, I'd love to know which of these two concepts is your favorite!",
        user_id: User.all.sample().id,
        category_id: 4,
        image_url: "https://cdn.dribbble.com/users/1906640/screenshots/11079666/media/2bb4eabe9052896114c846a8eae9dc73.jpg"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "The original brand book includes characteristics and features of the target audience, brand concept, the corporate identity of the company, the concept of brand promotion (images of all advertising messages, advertising stories), corporate style of the company, communications within the firm.",
        user_id: User.all.sample().id,
        category_id: 4,
        image_url: "https://cdn.dribbble.com/users/4540442/screenshots/11064007/media/01f8c5a3e1c67e9ab7ce7237456b4add.png"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "First proposal for OKGO, a small agency about blogging, content marketing and copy writing based in Amsterdam.",
        user_id: User.all.sample().id,
        category_id: 3,
        image_url: "https://cdn.dribbble.com/users/1763872/screenshots/11077054/media/d9e62f1989abf3a225671938c4ba0b11.jpg"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "Rachel Spoon and I have been working on creating some new designs that combine our passion for all things vintage and nature. This was one of our first to come out of that exploration and it got us excited for summer on the horizon.",
        user_id: User.all.sample().id,
        category_id: 2,
        image_url: "https://cdn.dribbble.com/users/741145/screenshots/11080123/media/f17775c5dedc2b25d1c648a92cd05659.jpg"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "New wraps for the buds at 5440 Beer and their flagship IPA. It's been a really enjoyable challenge trying to strike a balance between vintage beer designs nd modern consumer behavior. Part of 5440's brand alignment plays on the sense of nostalgia through throwback calls and visual representation. The goal is to hit a note that feels both classically heritage and contemporarily engaging. But unique enough to own a style within the brand and market.",
        user_id: User.all.sample().id,
        category_id: 2,
        image_url: "https://cdn.dribbble.com/users/1193653/screenshots/11081395/media/0ff5ae561330c64bbdc26c5127393005.jpg"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "https://cdn.dribbble.com/users/9964/screenshots/11068793/media/220cfcd60187641f87a4291e39ca87eb.png",
        user_id: User.all.sample().id,
        category_id: 2,
        image_url: "Some art I made in the thick of Easter week. Remembering the one who gave it all to set me free. This felt like a classic test for my authentic style, I could just hear my high school art teacher saying, now draw an apple."  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "Yeah, sneaker shot once again, good old tradition. But believe us, this concept is unusual. And what if instead of classic objects for investment, we invest in sneakers ? We were focused on the specific criteria. For example, according to the research, which was conducted by MyVoucherCodes, some of the sneakers have a resale value more than 60 times their original price. So, would you like to invest in the sneakers?",
        user_id: User.all.sample().id,
        category_id: 3,
        image_url: "https://cdn.dribbble.com/users/6234/screenshots/11077922/media/4149f7f4159154b8f321a6a21dff35a7.png"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "Simple website design for OneInterior stylistically based on the branding of the company. With modern design and minimalistic, OneInterior focus on project help the interactive user easier and better.",
        user_id: User.all.sample().id,
        category_id: 3,
        image_url: "https://cdn.dribbble.com/users/476559/screenshots/11078164/media/7fb5882cc5670a7ee815018e79add473.png"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "Here we have a task catalog. This is where workly populates all pre-defined tasks with a pre-defined price. Each credit is around $99. You can go on a subscription-based model, or on a credit-based model. Some of these tasks are simple and quick improvements that can be made to your Shopify store. Workly is a fake name for a real project that went sour. I guess that still happens to this day. Workly is a subscription-based Shopify task management tool that offers on-demand, pre-set or custom tasks. Basically they help you easily manage your Shopify store.",
        user_id: User.all.sample().id,
        category_id: 3,
        image_url: "https://cdn.dribbble.com/users/757683/screenshots/10976858/media/2de2760d8dfd25cfc9e3f9e5a3862971.jpg"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "A stargazing app to identify and learn about stars, planets, constellations and more! A stargazing app to identify and learn about stars, planets, constellations and more!",
        user_id: User.all.sample().id,
        category_id: 3,
        image_url: "https://cdn.dribbble.com/users/3434309/screenshots/11080422/media/0dca1e2e9bb7091cf7e128acb0d31545.jpg"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "I've made this illo — inspired by the recent 3D illo work by the design teams at Cash and MSFT to celebrate the release. Everyone on the event team has done a phenomenal job dealing with all of the challenges associated with this particular time and is tackling everything head-on with Clear Eyes. Proud to work alongside such an incredible team.",
        user_id: User.all.sample().id,
        category_id: 1,
        image_url: "https://cdn.dribbble.com/users/9112/screenshots/11078419/media/b9bf5a4576e9a46cb11c2b4b983434ba.jpg"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "No matter how strong technologies have taken over the world, books are always the source of knowledge & inspiration. Tell about your favorite writer with these Instagram templates.",
        user_id: User.all.sample().id,
        category_id: 3,
        image_url: "https://cdn.dribbble.com/users/504740/screenshots/11079380/media/38dec0636e49bed0667e428569176800.jpg"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "Some time ago I had the opportunity to do a project for a marketing agency that thanks to its activities helps to accelerate your online business.",
        user_id: User.all.sample().id,
        category_id: 3,
        image_url: "https://cdn.dribbble.com/users/1529400/screenshots/11076441/media/431b150e49e1126e2496a417c920e5a0.png"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "I saw Aron’s post on Instagram about the #indoorbadgechallenge, a project he initiated with Lisa McCormick to bring a little fun and positivity during this time. I wanted to contribute my interpretation as well. As many people worldwide are stuck at home now, some of you may be revisiting old films so I thought that this theme was fitting for the badge.",
        user_id: User.all.sample().id,
        category_id: 5,
        image_url: "https://cdn.dribbble.com/users/709430/screenshots/11067382/media/b11cd039cdf228d36e7ff9a6f648a9ec.png"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "This just about sums it up for me! If you're feeling completely unmotivated to do any extra creative work right now, that's okay. Readjusting to this bizarre, stressful, precarious situation isn't easy, and some days are harder than others. Take care of yourselves and be kind, everyone.",
        user_id: User.all.sample().id,
        category_id: 5,
        image_url: "https://cdn.dribbble.com/users/742849/screenshots/11069234/media/1063b62c1951a3f0451dc14d1125f676.jpg"  
    },
    { 
        title: Faker::TvShows::SiliconValley.app,
        description: "Another one for the #indoorbadgechallenge, a project I saw on Aron's page that he initiated with Lisa McCormick to bring a little fun and positivity during this time. As many people worldwide are stuck at home now, some of you may be revisiting old films so I thought that this theme was fitting for the badge. Take care and let's get through this together!",
        user_id: User.all.sample().id,
        category_id: 5,
        image_url: "https://cdn.dribbble.com/users/709430/screenshots/11082996/media/fbf535474e6e102eda757f30f72dce5d.jpg"  
    }
])



7.times do
    Comment.create(
        content: Faker::TvShows::MichaelScott.quote,
        user_id: User.all.sample().id,
        post_id: Post.all.sample().id
    )
end