class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def photos
    Photo.all.select { |pic| pic.user == self }
  end
end
