
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

linked_list.append(98)
print("Head:", linked_list.head.value, "Memory:", linked_list.head)
print("Tail:", linked_list.tail.value, "Memory:", linked_list.tail)
print("Length:", linked_list.length)