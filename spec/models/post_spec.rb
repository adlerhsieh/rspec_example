require 'rails_helper'

RSpec.describe Post, :type => :model do
	before(:each) do
		@post = Post.new
	end

	it ":title should not be blank" do
 		@post.title = nil
 		@post.save.should == false
	end

	it ":content should not be blank" do
 		@post.content = nil
 		@post.save.should == false
	end

	it "has many comments" do
		$post = Post.reflect_on_association(:comments)
		$post.macro.should == :has_many
	end
end
