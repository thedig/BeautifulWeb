require 'open-uri'

class RssFeed < ActiveRecord::Base
  attr_reader :stories

  def grab_stories
    @stories = []
    feed = FeedNormalizer::FeedNormalizer.parse open(self.url)
    @stories.push(*feed.entries)
    return @stories
  end

  def fancy_name
    return name.upcase
  end

  def bonkers
    puts "Bonkers!"
  end

end
