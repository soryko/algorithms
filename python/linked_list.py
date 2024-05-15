'''
Node class
parameters :self, :value
attributes :next
    creates new Node
'''
class Node():
    def __init__(self, value):
        self.value = value
        #Node attribute
        self.next = None


'''
LinkedList class
parameters :self, :value
    creates new Node
    points head and tail to new node
    length of 1

'''
class LinkedList():
    def __init__(self, value):
        self.value = value
        new_node = Node(value)
        #pointers
        self.head = new_node
        self.tail = new_node
        #list attributes
        self.length = 1


'''
append function
parameters :self, :value
    creates new Node
    adds Node to tail
'''
    def append(self,value):
        new_node = Node(value)
        self.tail = new_node
        self.head.next = new_node
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
print("Length:", linked_list.length)