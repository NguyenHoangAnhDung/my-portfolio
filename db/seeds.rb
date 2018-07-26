%w(user technology portfolio post).each do |model|
  puts "Delete #{model.singularize.classify} records"
  model.singularize.classify.constantize.destroy_all
end

puts "Create User"
User.create! email: "test@gmail.com", first_name: "Dung",
  last_name: "Nguyen Hoang", middle_name: "Anh", alias: "D2"

puts "Create Technologies"
Technology.create! name: "Angular"
Technology.create! name: "Ruby on Rails"
Technology.create! name: "Javascript"

puts "Create Portfolio"
Portfolio.create! description: "My portfolio", user_id: User.first.id

puts "Create posts"

10.times.each do |i|
  Post.create! title: "Post title #{i + 1}",
    content: "Post content #{i + 1}", user_id: User.first.id
end

