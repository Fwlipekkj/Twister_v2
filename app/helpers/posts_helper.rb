module PostsHelper

  def post_media_url(media)
    rails_blob_url(media) rescue nil
  end

end