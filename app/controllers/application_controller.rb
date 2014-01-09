class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :banned?
  helper_method :is_admin?
  helper_method :find_index_user
  helper_method :latest_articles
  helper_method :latest_videos

  def latest_videos
    @videos = Video.all.last(5)
    return @videos
  end

  def latest_articles
    @articles = Article.all.last(5)
    return @articles
  end

  def find_index_user(article_id)
    @article = Article.find(article_id)
    return @article.user.email
  end

  def banned?
    if current_user.present? && current_user.ban?
      sign_out current_user
      flash[:error] = "This account has been suspended...."
      disabled_index_path
    end
  end
  def is_admin?
    if current_user.present? && current_user.admin?
      true
    end
  end

end
