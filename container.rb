class Container

  MAX_ITEMS = 10
  
  attr_accessor :contents

  def initialize(contents: [])
    @contents = contents
  end

  def capacity
    MAX_ITEMS
  end

  def remaining_capacity
    capacity - contents.size
  end

  def add(item)
    contents << item
  end

  def remove(item)
    contents.remove(item)
  end

end

