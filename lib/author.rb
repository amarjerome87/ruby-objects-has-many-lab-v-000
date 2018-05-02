class Author

attr_accessor :author, :name


def initialize(name)
  @name  = name
  @posts = []
end


def posts
  @posts
end


def add_post(post)
  @posts << post
  post.author = self
end

def add_post_by_title(name)
  @name = name
  post = Post.new(name)
  post.author = self
  add_post(post)
end

def self.post_count
end 

end
