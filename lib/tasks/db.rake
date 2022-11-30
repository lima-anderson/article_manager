namespace :db do
  desc "TODO"
  task fake: :environment do
    for i in 1..50
      Article.create!(
        title: Faker::Lorem.word,
        text: Faker::Lorem.paragraph
      )
    end
  end

end
