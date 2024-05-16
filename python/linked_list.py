
class Node():
    def __init__(self, value):
        self.value = value
        #Node attribute
        self.next = None


class LinkedList():
    def __init__(self, value):
        self.value = value
        new_node = Node(value)
        #pointers
        self.head = new_node
        self.tail = new_node
        #list attributes
        self.length = 1


    def append(self,value):
        new_node = Node(value)
        if self.head is None:
            #pointers
            self.head = new_node
            self.tail = new_node
        else:
            #pointers
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
            incision_1 = tracker
            while tracker.next != None:
                incision_1 = tracker
                tracker = tracker.next    
            incision_2 = tracker.next
            self.tail = incision_1
            self.tail.next = None
            incision_1.next = incision_2
            self.length -= 1
        return incision_2
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