require 'test_helper'
class CommentTest < ActiveSupport::TestCase
  test "that a comment requires content" do
    comment = Comment.new
    assert !comment.save
    assert !comment.errors[:content].empty?
  end

  test "that a Comment's content is at least 2 letters" do
    comment = Comment.new
    comment.comment = "H"
    assert !comment.save
    assert !comment.errors[:content].empty?
  end 

  test "that a status has a user id" do
    comment = Comment.new
    comment.content = "Hello"

    assert !comment.save
    assert !comment.errors[:user_id].empty?
  end
end