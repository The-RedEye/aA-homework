class Stack

  def initialize 
    @stack = []
  end

  def push (el)
    @stack << el
  end

  def pop 
    @stack.pop
  end

  def peek
    @stack.last
  end

end # end Stack Class

class Queue

  def initialize
    @queue = []
  end

  def enqueue (el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue[0]
  end

end #end Queue Class

class Map
  
  def initialize
    @map = {}
  end

  def set (key, value)
    @map[key] = value
  end

  def get(key)
    @map[key]
  end

  def delete(key)
    @map[key] = nil
  end

  def show
    @map
  end

end #end Map Class