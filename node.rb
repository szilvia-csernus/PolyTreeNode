class PolyTreeNode
    def initialize
        @value = value
        @parent = nil
        @children = []
    end

    def parent
        @parent
    end

    def children
        @children
    end

    def parent=(par=nil)
        @parent = par
        @parent.children << self unless par == nil
    end
end






