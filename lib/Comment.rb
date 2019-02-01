class Comment
  attr_accessor :user, :photo, :comment_text

  @@all_comments = []

  def initialize(comment_text, user="anonymous")
    @comment_text = comment_text
    @@all_comments << self
  end

  def self.all
    @@all_comments
  end
end
