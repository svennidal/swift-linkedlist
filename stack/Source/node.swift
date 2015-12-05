class Node {
	var data: Int
	var next: Node?
	
	init(value: Int){
		self.data = value
		self.next = nil
	}
	init(value: Int, nextNode: Node){
		self.data = value
		self.next = nextNode
	}
}
