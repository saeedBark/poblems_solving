
main() {

  final solution = Solution();
 
 solution.addTwoNumbers(ListNode(5,ListNode(6,ListNode(4))),ListNode(2,ListNode(3,ListNode(4))));
}

  class ListNode {
    int val;
    ListNode? next;
  ListNode([this.val = 0, this.next,]);
 }
 
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
      final newL1 = [];
      final newL2 = [];
       ListNode finalListNode = ListNode();
      while (l1 != null){        
              newL1.insert(0,l1.val);
              l1 = l1.next;  
      }
      while (l2 != null){
              newL2.insert(0,l2.val);
              l2 = l2.next; 
      }
    
     final sum = ( int.parse(newL1.join('')) +  int.parse(newL2.join('')) );
     final reversedSumList = sum.toString().split('').reversed.toList();
     final nodes = reversedSumList.map((e)=>ListNode(int.parse(e))).toList();

     for(int i =0 ; i<nodes.length-1; i++){
             nodes[i].next = nodes[i+1];
     }  
     finalListNode = nodes[0];

     return finalListNode;
  }
}


 