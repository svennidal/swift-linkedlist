enum ListError: ErrorType {
	case EmptyList
	case NonExistent
}

class List {
	var head: Node?

	init(){
		self.head = nil
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
		} else {
			let temp: Node  = Node(value: value, nextNode: self.head!)
			self.head = temp
		}
	}

	func pop() throws -> Int {
		if(self.head != nil){
			let value = self.head?.data
			if(self.head!.next == nil){
				self.head = nil
			} else {
				self.head = self.head?.next
			}
			return (value)!
		} else {
			throw ListError.EmptyList
		}
	}

	func remove(value: Int) throws {
		if(self.head == nil){
			throw ListError.NonExistent
		} else {
			if(head?.data == value){
				head = head?.next
			} else if(head?.next?.data == value){
				head?.next = head?.next?.next
			} else {
				try mRemove(value, node: (head?.next)!)
			}
		}
	}

	private func mRemove(value: Int, node: Node?) throws {
		if(node == nil){
			throw ListError.NonExistent
		}
		if(node?.next?.data == value){
			node?.next = node?.next?.next
		} else {
			try mRemove(value, node: (node?.next)!)
		}
	}

	func clear(){
		self.head = nil
	}

}
