 class Post
     attr_accessor :id, :title, :content, :author

     def initialize(title, content, author)
       self.title = title
       self.content = content
       self.author = author
     end
   end