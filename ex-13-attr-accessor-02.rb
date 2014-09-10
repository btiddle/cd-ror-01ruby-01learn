
=begin

=========================
SUMMARY
=========================

attr_accessor :foo

is a shortcut for:

def foo
  @foo
end

def foo=(val)
  @foo = val
end

It is nothing more than a getter/setter for an object.

=========================
DETAIL
=========================

http://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby

Let's say you have a class Person.

class Person
end

person = Person.new
person.name # => (NoMethodError)

Obviously we never defined method name. Let's do that.

class Person
  def name
    @name # simply returning an instance variable @name
  end
end

person = Person.new
person.name # => nil
person.name = "Dennis" # => (NoMethodError)

Aha, we can read the name, but that doesn't mean we can assign the name. Those are two different methods. Former called reader and latter called writer. We didn't create the writer yet so let's do that.

class Person
  def name
    @name
  end

  def name=(str)
    @name = str
  end
end

person = Person.new
person.name = 'Dennis'
puts person.name # => "Dennis"

Awesome. Now we can write and read instance variable @name using reader and writer methods. Except, this is done so frequently, why waste time writing these methods every time? We can do it easier.

class Person
  attr_reader :name
  attr_writer :name
end

Even this can get repetitive. When you want both reader and writer just use accessor!

class Person
  attr_accessor :name
end

person = Person.new
person.name = "Dennis"
person.name # => "Dennis"

Works the same way! And guess what: the instance variable @name in our person object will be set just like when we did it manually, so you can use it in other methods.

=end

class Person
  attr_accessor :name

  def greeting
    "Hello #{@name}"
  end
end

person = Person.new
person.name = "Dennis"
puts person.greeting # => "Hello Dennis
