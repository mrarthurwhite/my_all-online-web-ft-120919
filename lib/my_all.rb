require 'pry'

def my_all?(collection)
    i = 0
    block_return_values = []
    while (i<collection.length)
        block_return_values << yield(collection[1])
        i +=1
    end
    if block_return_values.include?(false) 
        return false
    end
    return true
end

my_all?([1,2,3]) { 
    |i| 
    i<2
}