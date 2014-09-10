# Fiels and direcories

# Anything listed after a method is considered an attachment.
print Dir.entries "/"
puts
# => [".", "..", ".DocumentRevisions-V100", ".file", ".fseventsd", ".PKInstallSandboxManager", ".Spotlight-V100", ".Trashes", ".vol", "Applications", "backup", "balsmiq-demo-file.bmml", "bin", "cores", "dev", "etc", "home", "Library", "mach_kernel", "net", "Network", "private", "sbin", "Software", "System", "tmp", "User Information", "Users", "usr", "var", "Volumes"]


print "pre", "event", "ual", "ism"
# => preeventualism
puts


print File.read("/comics.txt")

FileUtils.cp('/comics.txt', '/Home/comics.txt')

File.open("/Home/comics.txt", "a") do |f|
    f << "Cat and Girl: http://catandgirl.com/"
end

print File.read("/Home/comics.txt")

# What time was it when you changed the file?
File.mtime("/Home/comics.txt")

# Files - Lots of methods for editing files and lookin around in directories.

# Arguments - Arguments are a list of things sent into a method. With commas between.

# do and end are another way to make a block.

# Creating a method
def load_comics( path )
      comics = {}
  File.foreach(path) do |line|
    name, url = line.split(': ')
    comics[name] = url.strip
  end
  comics
end

comics = load_comics('/comics.txt')

require 'popup'

Popup.goto "http://ruby-lang.org"

Popup.make {
  h1 "My Links"
  link "Go to Ruby", "http://ruby-lang.org/"
}

Popup.make do
  h1 "Things To Do"
  list do
    p "Try out Ruby"
    p "Ride a tiger"
    p "(down River Euphrates)"
  end
end

Popup.make do
  h1 "Comics on the Web"
  list do
    comics.each do |name, url|
      link name, url
    end
  end
end


# Empty curly braces {} is a shortcut for Hash.new. 

class BlogEntry
    attr_accessor :title, :time, :fulltext, :mood
end


entry = BlogEntry.new.

#  In the class definition, you used a method called attr_accessor. 
#  There are many attribute methods like this which add little 
#  settings to classes. These attributes are just variables 
#  attached to a class.

entry.time = Time.now
entry.mood = :sick
entry.fulltext = "I can't believe Mt. Hood was stolen! I am speechless! It was stolen by a giraffe who drove away in his Cadillac Seville very nonchalant!!"

class BlogEntry
  def initialize( title, mood, fulltext )
    @time = Time.now
    @title, @mood, @fulltext = title, mood, fulltext
  end
end

# Classes - Everything in Ruby is some kind of object. Classes explain objects. How a certain object works. For example, you made a few blog entry objects and these objects are explained in the BlogEntry class. In other words: you call them BlogEntry objects.

# Accessors - Are variables attached to an object which can be used outside the object. (entry.time = Time.now)

# Instance variables - Are the same variables you're using for accessors when inside the object. Like in a method definition. (@time = Time.now)

# sort your entries from newest to oldest. 
blog.sort_by { |entry| entry.time }.reverse 

#search your blog for anything related to "cadillac"
blog.find_all { |entry| entry.fulltext.match(/cadillac/i) } 

# add new entries with blog 
<< <new_entry> 

# The map method cycles through an array and replaces each item with something new
blog.map { |entry| entry.mood }

blog.map { "Bruce Willis" }







