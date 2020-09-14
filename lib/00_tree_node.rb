class PolyTreeNode
    attr_reader :value, :parent, :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def inspect
        { 'value' => @value,
          'parent' => @parent}.inspect
    end

    def parent=(par)
        return if @parent == par
        old_parent = self.parent
        old_parent.children.delete_if {|ch| ch == self } unless old_parent == nil
        @parent = par
        @parent.children << self unless (par == nil)
    end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        raise "#{child_node} is not a child of #{self}!" unless @children.include?(child_node)
        child_node.parent = nil 
    end


end