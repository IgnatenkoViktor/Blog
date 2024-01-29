require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "new_comment" do
    mail = CommentsMailer.new_comment(comments(:one))
    assert_equal "New comment!", mail.subject
    assert_equal ["blog-owner@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
  end
end
