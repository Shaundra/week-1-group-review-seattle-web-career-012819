class Photo
  attr_accessor :user
  @@all_photos = []

  def initialize
    @@all_photos << self
  end

  def comments
    Comment.all.select { |msg| msg.photo == self }
  end

  def make_comment(text)
    new_comment = Comment.new(text)
    new_comment.photo = self
  end

  def self.all
    @@all_photos
  end
end
