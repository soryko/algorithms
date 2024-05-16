
class Node():
    def __init__(self, value):
        self.value = value
        #Node attribute
        self.next = None


class LinkedList():
    def __init__(self, value):
        self.value = value
        new_node = Node(value)
        self.head = new_node
        self.tail = new_node
        self.length = 1

    def print_list(self):
        tracker = self.head
        while tracker.next != None:
            print(tracker.value)
            tracker = tracker.next
        print(tracker.value)
        return

    def append(self,value):
        new_node = Node(value)
        if self.head is None:
            self.head = new_node
            self.tail = new_node
        else:
            self.tail.next = new_node
            self.tail = new_node
        self.length += 1

    def pop(self):
        if self.head is None:
            return
        elif self.length <= 1:
            self.head = None
            self.tail = None
        else:
            tracker = self.head
            incision = self.head
            while tracker.next != None:
                incision = tracker
                tracker = tracker.next    
            self.tail = incision
            self.tail.next = None
            self.length -= 1
        return incision
    
    def prepend(self, value):
        if self.head == None:
            self.append(value)
        else:
            new_node = Node(value)
            new_node.next = self.head
            self.head = new_node
        self.length += 1
'''
prepend function
parameters :self, :value
    creates new Node
    adds Node to head


insert function
parameters :self, :value
    creates new Node
    inserts Node between Nodes
    previous Node pointer points to new Node
    new Node points to following Node

'''

#tests
linked_list = LinkedList(25)
print("Head:", linked_list.head.value, "Memory:", linked_list.head)
print("Tail:", linked_list.tail.value, "Memory:", linked_list.tail)
print("Length:", linked_list.length, "Object:", vars(linked_list))

linked_list.append(98)
print("Head:", linked_list.head.value, "Memory:", linked_list.head)
print("Tail:", linked_list.tail.value, "Memory:", linked_list.tail)
print("Length:", linked_list.length, "Object:", vars(linked_list))

linked_list.append(43)
print("Head:", linked_list.head.value, "Memory:", linked_list.head)
print("Tail:", linked_list.tail.value, "Memory:", linked_list.tail)
print("Length:", linked_list.length, "Object:", vars(linked_list))

linked_list.append(2)
print("Head:", linked_list.head.value, "Memory:", linked_list.head)
print("Tail:", linked_list.tail.value, "Memory:", linked_list.tail)
print("Length:", linked_list.length, "Object:", vars(linked_list))

linked_list.pop()
print("Head:", linked_list.head.value, "Memory:", linked_list.head)
print("Tail:", linked_list.tail.value, "Memory:", linked_list.tail)
print("Length:", linked_list.length, "Object:", vars(linked_list))

linked_list.append(12)
linked_list.append(38)
linked_list.append(9)
linked_list.append(662)
linked_list.prepend(88)
print("Head:", linked_list.head.value, "Memory:", linked_list.head)
print("Tail:", linked_list.tail.value, "Memory:", linked_list.tail)
print("Length:", linked_list.length, "Object:", vars(linked_list))

linked_list.print_list()