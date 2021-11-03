10.times do |blog|
	Blog.create!(
		title: "my Blog post#{blog}",
		body: "This is body of blog post"
	)
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end

puts "5 skills cerated"

9.times do |portfolio_item|
	Portfolio.create!(
		title: "portfolio title#{portfolio_item}",
		subtitle: "My great service",
		body: "This is body of portfolio post",
		main_image: "https://placehold.it/600x400",
		thumb_image: "https://placehold.it/350x200"
	)
end
puts "9 portfolio_item created"