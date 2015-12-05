class QueueUI {
	var queue = Queue()
	func getSize(){
		print("Size is \(queue.getSize()) ")
	}
	func push(value: Int){
		print("Push: \(value)")
		queue.push(value)
	}
	func pop(){
		do {
			print("Pop: \(try queue.pop()) ")
		} catch QueueError.EmptyQueue {
			print("Pop: Error: Queue is empty")
		} catch {
			print("Some error was thrown")
		}
	}
	func printData(){
		print("Printing all data:")
		let allData: [Int] = queue.getData()
		for data in allData {
			print("\t \(data)")
		}
	}
	func clear(){
		print("Clearing the queue")
		queue.clear()
	}
}
