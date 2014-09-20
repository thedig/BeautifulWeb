module ApplicationHelper

  def grab_feeds(feeds)
    stories = []
    File.open(feeds, 'r').each_line do |f|
      feed = FeedNormalizer::FeedNormalizer.parse open(f.strip)
      stories.push(*feed.entries)
    end
    return stories
  end

end
