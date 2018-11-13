# Add 100 Users
100.times do
  User.create(login: Faker::Name.first_name )
end

# Add 200_000 Posts
100.times do |post_count|
  Post.create(
    title: Faker::Book.title,
    body: Faker::Lorem.paragraph(2, true, 4),
    user_id: rand(1..100),
    user_ip: "192.168.0.#{rand(1..50)}"
  )
  #Add rating for posts
  if post_count % 4 == 0
    Rating.create(evaluation: rand(1..5))
  end
end

puts "Created #{User.count} users, #{Post.count} posts and rating for each posts"
