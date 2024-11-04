class Program {
    class Node {
        var value: Int
        var previous: Node?
        var next: Node?
        
        init(value: Int) {
            self.value = value
            previous = nil
            next = nil
        }
    }
    
    class DoublyLinkedList {
        var head: Node?
        var tail: Node?
        
        init() {
            head = nil
            tail = nil
        }
        
        // Check if the list contains a node with a specific value
        func containsNodeWithValue(value: Int) -> Bool {
            var trav = head
            while trav != nil {
                if trav?.value == value {
                    return true
                }
                trav = trav?.next
            }
            return false
        }
        
        // Remove a specific node from the list
        func remove(node: Node) {
            node.previous?.next = node.next
            node.next?.previous = node.previous
            if node === head  {
                head = head?.next
            }
            if node === tail {
                tail = tail?.previous
            }
            node.previous = nil
            node.next = nil
        }
        
        // Remove all nodes with a specific value
        func removeNodesWithValue(value: Int) {
            var trav = head
            while trav != nil {
                let nextNode = trav?.next
                if trav?.value == value {
                    remove(node: trav!)
                }
                trav = nextNode
            }
        }
        
        // Insert a node before another specific node
        func insertBefore(node: Node, nodeToInsert: Node) {
            // If the node to insert is already in the list, remove it first
            remove(node: nodeToInsert)
            var pointer = head
            while let p = pointer {
                if p === node {
                    if p === head {
                        setHead(node: nodeToInsert)
                    } else {
                        nodeToInsert.previous = p.previous
                        nodeToInsert.next = p
                        p.previous?.next = nodeToInsert
                        p.previous = nodeToInsert
                    }
                }
                pointer = p.next
            }
        }
        
        // Insert a node after another specific node
        func insertAfter(node: Node, nodeToInsert: Node) {
            // If the node to insert is already in the list, remove it first
            remove(node: nodeToInsert)
            var pointer = head
            while let p = pointer {
                if p === node {
                    if p == tail {
                        setTail(node: nodeToInsert)
                    } else {
                        nodeToInsert.previous = p
                        nodeToInsert.next = p.next
                        p.next?.previous = nodeToInsert
                        p.next = nodeToInsert
                    }
                }
                pointer = p.next
            }
        }
        
        // Set the node as the new head
        func setHead(node: Node) {
            if head === node {
                return
            }
            remove(node: node)
            node.next = head
            if head != nil {
                head?.previous = node
            }
            head = node
            if tail == nil {
                tail = head
            }
        }
        
        // Set the node as the new tail
        func setTail(node: Node) {
            if tail === node {
                return
            }
            remove(node: node)
            node.previous = tail
            if tail != nil {
                tail?.next = node
            }
            tail = node
            if head == nil {
                head = tail
            }
        }
        
        // Insert the node at a specific position (1-based index)
        func insertAtPosition(position: Int, nodeToInsert: Node) {
            if position == 1 {
                setHead(node: nodeToInsert)
                return
            }
            
            var trav = head
            var currentPosition = 1
            
            while trav != nil && currentPosition < position {
                trav = trav?.next
                currentPosition += 1
            }
            
            if trav != nil {
                insertBefore(node: trav!, nodeToInsert: nodeToInsert)
            } else {
                setTail(node: nodeToInsert)
            }
        }
    }
}

