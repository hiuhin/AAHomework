
require "byebug"

class Stack
    def initialize
        @arr = []
    end

    def push(el)
        @arr.push(el)
    end

    def pop
        @arr.pop
    end

    def peek
        @arr.last
    end
end


class Queue
    def initialize
        @arr = []
    end

    def enqueue(el)
        @arr.push(el)
    end

    def dequeue
        @arr.shift
    end

    def peek
        @arr.first
    end
end

class Map
    def initialize
        @arr = []
    end

    def set(key, value)
        @arr.each do |subarr|
            if subarr[0] == key
                subarr[1] = value
            end
        end
        @arr << [key,value]
        value
    end

    def get(key)
        @arr.each do |subarr|
            if subarr[0] == key
                return subarr[1]
            end
        end
        nil
    end

    def delete(key)
        value = get(key)
        @arr.reject! { |subarr| subarr[0] == key}
        value
    end

    def show
        @arr
    end
end

