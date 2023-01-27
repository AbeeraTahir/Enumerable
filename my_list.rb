require_relative './my_enumerable.rb'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end
  def each 
    @list.each { |n| yield n }
  end
end

list = MyList.new(1,2,3,4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts(list.filter { |e| e.even? })
