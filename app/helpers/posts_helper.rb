module PostsHelper
  def hide_fields (post)
    if user_signed_in?
      post.user.username
    else
      '????'
    end
  end

  def log_or_not
    if user_signed_in?
      link_to 'New Post', new_post_path
    end
  end
end
