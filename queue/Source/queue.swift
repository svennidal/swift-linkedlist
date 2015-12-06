enum QueueError: ErrorType {
	case EmptyQueue
}

class Queue {
	var head: Node?
	var tail: Node?
	init() {
		self.head = nil
		self.tail = nil
	}
	func getSize() -> Int {
		if(self.head == nil){
			return 0
		} else {
			return mGetSize((self.head)!)
		}
	}

	private func mGetSize(node: Node?) -> Int {
		if(node == nil){
			return 0
		} else {
			return 1 + mGetSize((node)!.next)
		}
	}

	func getData() -> [Int] {
		var allData: [Int] = []
		if(self.head == nil){
			return allData
		} else {
			return mGetData(head, allData: &allData)
		}
	}

	private func mGetData(node: Node?, inout allData: [Int]) -> [Int] {
		if(node == nil){
			return allData
		} else {
			allData.append(node!.data)
			return mGetData((node)!.next, allData: &allData)
		}
	}

	
	func push(value: Int){
		if(self.head == nil){
			self.head = Node(value: value)
			self.tail = self.head
		} else if(self.tail != nil && self.tail?.next == nil){
			let temp: Node  = Node(value: value)
			self.tail!.next = temp
			self.tail = temp
		} else {
			let temp: Node  = Node(value: value)
			self.tail!.next = temp
			self.tail = temp
		}
	}

	func pop() throws -> Int {
		if(self.head != nil){
			let value = self.head?.data
			if(self.head!.next == nil){
				self.head = nil
				self.tail = nil
			} else {
				self.head = self.head?.next
			}
			return (value)!
		} else {
			throw QueueError.EmptyQueue
		}
	}

	func clear(){
		self.head = nil
	}

}
