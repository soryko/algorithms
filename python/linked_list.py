'''
LinkedList class
parameters :self, :value
    creates new Node
    points head and tail to new node
    length of 1

'''
class LinkedLists():
    def __init__(self, value):
        self.value = value
        new_node = Node()
        #pointers
        self.head = new_node
        self.tail = new_node
        #list attributes
        self.length = 1

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
append function
parameters :self, :value
    creates new Node
    adds Node to tail

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