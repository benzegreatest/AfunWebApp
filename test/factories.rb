FactoryGirl.define do

	factory :user do
		sequence :email do |x|
			"benchinoy#{x}@gmail.com"
		end
		password "nicetime"
		password_confirmation "nicetime"
	end

	factory :place do
		name "Bens Place"
		address "San Jose"
		description "Fun times"
		latitude(37.349369)
		longitude(-121.941197)
		association :user
	end

	factory :comment do
		message "Life is good"
		rating "1_star"
		association :user
		association :place
	end
end
