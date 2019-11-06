require 'faker'

nums = (1..18).to_a

puts "Creating review...."
nums.each do |id|
  Review.create!(
    content: Faker::Restaurant.review,
    rating: [1, 2, 3, 4, 5].sample,
    restaurant_id: id
  )
end
puts "....finished"
