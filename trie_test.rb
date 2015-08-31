require 'minitest/autorun'
require 'minitest/pride'
require_relative 'trie'

class TrieTest < Minitest::Test

  def test_tree_has_root_node
    t = Trie.new
    assert t.root
  end

  def test_tree_can_insert_single_letter
    t = Trie.new
    t.insert("a")
    assert t.root.has_link?("a")
  end

  def test_tree_can_insert_a_whole_word
    t = Trie.new
    t.insert("an")
    assert t.root.has_link?("a")
  end
end

class NodeTest < Minitest::Test

  def test_node_can_identfy_its_links_datums
    n = Node.new(nil)
    n.push(["a"])

    assert n.has_link?("a")
  end
end
