
Given(/^I write post in a blog$/) do
    @post = Post.new('This is title', 'This is content', @user)
    blog_post_positive(@post)
end

Then(/^I check if posted in a blog$/) do
    check_if_blog_added(@post)
end

And(/^I change blog title$/) do
    @post = Post.new('This is NEW title', 'This is content', @user)
    blog_post_positive(@post)
end