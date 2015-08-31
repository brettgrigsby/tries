class Trie
  attr_reader :root

  def initialize
    @root = Node.new
  end

  def insert(data)
    root.push(data.downcase.chars)
  end

end

class Node
  attr_reader :data
  attr_accessor :links

  def initialize(data=nil)
    @data = data
    @links = []
  end

  def has_link?(data)
    links.each { |link| return true if link.data == data }
    false
  end

  def get_link(data)
    links.find { |link| link.data == data }
  end

  def push(data)
      letter = data.shift
      if has_link?(letter)
        node = get_link(letter)
      else
        node = Node.new(letter)
      end
    unless data == []
      node.push(data)
    end
  end

end
