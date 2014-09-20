class RssFeedsController < ApplicationController

  def index

  end

  def show
    @rss_feed = RssFeed.find(params[:id])
    @rss_feed.grab_stories
    render :show
  end

end
