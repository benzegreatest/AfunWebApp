require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
 test "comment added to database" do
 	user = FactoryGirl.create(:user)
 	sign_in user
 	place = FactoryGirl.create(:place)
 	post :create, :place_id => place.id, :comment => {
 		:rating => '5_star',
 		:message => 'Can we do it sports fans?'
 	}
 	assert_not_empty(place.comments)
 	assert_redirected_to place_path(place)
end
end