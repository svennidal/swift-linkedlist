var queue = QueueUI()

queue.getSize()
print("\n")

queue.push(4)
queue.getSize()
print("\n")

queue.pop()
queue.getSize()
print("\n")

queue.pop()
queue.getSize()
print("\n")

queue.push(4)
queue.getSize()
print("\n")

queue.push(7)
queue.getSize()
print("\n")

queue.printData()
print("\n")

queue.push(0)
queue.push(1)
queue.push(2)
queue.push(3)
queue.getSize()
queue.printData()
print("\n")

queue.pop()
queue.pop()
queue.pop()
queue.getSize()
queue.printData()
print("\n")

queue.push(8)
queue.push(9)
queue.push(10)
queue.push(12)
queue.push(13)
queue.getSize()
queue.printData()
print("\n")


queue.push(14)
queue.getSize()
queue.printData()
print("\n")

queue.pop()
queue.pop()
queue.getSize()
queue.printData()
print("\n")

queue.clear()
queue.getSize()
queue.printData()
print("\n")

