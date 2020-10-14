module PostsHelper
  def hide_fields(post)
    if user_signed_in?
      post.user.username
    else
      '????'
    end
  end

  def log_or_not
    link_to 'New Post', new_post_path if user_signed_in?
  end
end
