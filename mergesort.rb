require 'pry-byebug'


//use first instead of [0] and shift instead of delete_at(0) plus maybe turnery can be used

def merge(array)
    return array if(array.length == 1 || array.length == 0)
    leftarray = merge(array.slice!(0,array.length/2))
    rightarray = merge(array)

    newarray = []
    until(leftarray.empty? || rightarray.empty?) do
        # binding.pry
        if(leftarray[0] > rightarray[0])
            newarray.push(leftarray[0])
            leftarray.delete_at(0)
        else
            newarray.push(rightarray[0])
            rightarray.delete_at(0)
        end
    end
    return newarray+leftarray+rightarray
end

p merge([8,7,3,5,34,3,2,4,6,2])
