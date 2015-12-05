class StackUI {
	var stack = Stack()
	func getSize(){
		print("Size is \(stack.getSize()) ")
	}
	func push(value: Int){
		print("Push: \(value)")
		stack.push(value)
	}
	func pop(){
		do {
			print("Pop: \(try stack.pop()) ")
		} catch StackError.EmptyStack {
			print("Pop: Error: Stack is empty")
		} catch {
			print("Some error was thrown")
		}
	}
	func printData(){
		print("Printing all data:")
		let allData: [Int] = stack.getData()
		for data in allData {
			print("\t \(data)")
		}
	}
	func clear(){
		print("Clearing the stack")
		stack.clear()
	}
}
