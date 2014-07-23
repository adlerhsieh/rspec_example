require 'rails_helper'

RSpec.describe Comment, :type => :model do
	it "belongs to post" do
		$comment = Comment.reflect_on_association(:post)
		$comment.macro.should == :belongs_to
	end
end
