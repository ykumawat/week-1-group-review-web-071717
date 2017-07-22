# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class


photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]

###########################################################################
class User
  attr_accessor :name, :photos

  def initialize(name)
    @name = name
    @photos = []
  end

  def add_photo(photo)
    self.photos << photo
    photo.user = self
  end

end

class Photo
  attr_accessor :user, :comments
  @@all = []
  def initialize
    @comments = []
    @@all << self
  end

  def make_comment(comment)
    @comments << Comment.new(comment)
  end

  def self.all
    @@all
  end

end

class Comment
  attr_accessor :text
  @@all = []

  def initialize(text)
    @text = text
    @@all << self
  end

  def self.all
    @@all
  end

end
