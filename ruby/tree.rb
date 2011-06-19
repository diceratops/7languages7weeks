class Tree
	attr_accessor :children, :node_name
	def initialize(familyHash)
		#go through the hash, set node_name to be the key(parent) of the first
                #element in the hash, then add as children, the value(child) of that key.
		familyHash.each do |parent, child|
			@node_name = parent
			@children = []
			child.each do |parent, child|
				@children.push Tree.new({parent => child})
			end
		end		
	end
	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end
	def visit(&block)
		block.call self
	end
end

my_family_hash = { 'grandpa' => 
           { 'dad' => { 'child 1' => {'peter' => {}}, 'child 2' => {'john' => {}} }, 
           'uncle' => { 'child 3' => {}, 'child 4' => {} } } }

#pass Tree a parameter called my_family_hash
family_tree = Tree.new(my_family_hash)

puts "visiting a node"
family_tree.visit {|node| puts node.node_name}

puts "Visiting the whole family"
family_tree.visit_all {|node| puts node.node_name }

