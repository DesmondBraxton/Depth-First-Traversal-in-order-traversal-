import UIKit


class BinaryTreeNode<T> {
  var value: T
  var leftChild: BinaryTreeNode?
  var rightChild: BinaryTreeNode?
  init(_ value: T) {
    self.value = value
  }
}

/*
        8
      /   \
     11    4
    /  \  /  \
   7   30 9    6
 */

var binaryTree: BinaryTreeNode<Int> = {
let rootNode = BinaryTreeNode(8)
let elevenNode = BinaryTreeNode(11)
let fourNode = BinaryTreeNode(4)
let sevenNode = BinaryTreeNode(7)
let thirtyNode = BinaryTreeNode(30)
let sixNode = BinaryTreeNode(6)
let nineNode = BinaryTreeNode(9)

rootNode.leftChild = elevenNode
rootNode.rightChild = fourNode
elevenNode.leftChild = sevenNode
elevenNode.rightChild = thirtyNode
fourNode.leftChild = nineNode
fourNode.rightChild = sixNode
    
return rootNode
}()
// In order Traversal to return 7 11 30 8 9 4 6
    // 3 steps
    // 1st visit left child recursively
    // 2nd visit the node itself
    // 3rd visit the right child recursively

extension BinaryTreeNode {
    public func traverseInOrder(visit: (T) -> Void) {
        leftChild?.traverseInOrder(visit: visit ) // Recursive call on left
        visit(value)
        rightChild?.traverseInOrder(visit: visit)
    }
}

binaryTree.traverseInOrder { print ($0) }

