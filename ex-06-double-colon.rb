#!/usr/bin/ruby 

CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST            , ">out there inside one"
puts Inside_two.new.where_is_my_CONST            , ">inside two"
puts Object::CONST + Inside_two::CONST           , ">out there inside two"
puts Inside_two::CONST + CONST                   , ">inside two out there"
puts Inside_one::CONST                           , "><Proc:..."
puts Inside_one::CONST.call + Inside_two::CONST  , ">in there inside two"
