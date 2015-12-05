class ListUI {
	var list = List()
	func getSize(){
		print("Size is \(list.getSize()) ")
	}
	func push(value: Int){
		print("Push: \(value)")
		list.push(value)
	}
	func pop(){
		do {
			print("Pop: \(try list.pop()) ")
		} catch ListError.EmptyList {
			print("Pop: Error: List is empty")
		} catch {
			print("Some error was thrown")
		}
	}
	func printData(){
		print("Printing all data:")
		let allData: [Int] = list.getData()
		for data in allData {
			print("\t \(data)")
		}
	}
	func remove(value: Int){
		print("Removing first instance of a node containing: \(value)")
		do {
			try list.remove(value)
		} catch ListError.NonExistent {
			print("\t Error: List is empty")
		} catch {
			print("Some error was thrown")
		}
	}
	func clear(){
		print("Clearing the list")
		list.clear()
	}
		
}
