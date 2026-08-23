import java.io.PrintStream;
import java.util.NoSuchElementException;

class StringStackImpl implements StringStack{
  
    private Node<String> head = null;
    private int size = 0;

    public StringStackImpl(){}
    
    public boolean isEmpty(){
        return (head==null);
    }
    
    public void push(String item){
        Node<String> tempNode = new Node<String>(item);//Node to be pushed creation
        if(isEmpty()){//If the stack is empty
            head = tempNode; 
        }
        else{
            tempNode.setNext(head);
            head = tempNode;
        }
        size++;//Stack's size increment, after the insertion of a Node
        tempNode = null;
    }

    public String pop() throws NoSuchElementException{ 
        if(isEmpty())//If the stack is empty, a "NoSuchElementException" is thrown
            throw new NoSuchElementException();
        
        String tempData = head.getData();//head's data assignment to a temporary variable, which will be returned
        head = head.getNext();
        size--;//Stack's size decrement, after the removal of a Node
        return tempData;
    }

    public String peek() throws NoSuchElementException{
        if(isEmpty())//If the stack is empty, a "NoSuchElementException" is thrown
            throw new NoSuchElementException();
        return head.getData();//Otherwise the data of the head is returned
    }

    public void printStack(PrintStream stream){
        if (!isEmpty()){//When Stack has elements 
        String stack = "";//String to be printed initialization
        stack += head.getData() + " <- top\n";
        for(Node<String> iterator = head.getNext();iterator!=null;iterator = iterator.getNext())
            stack += iterator.getData() + "\n";
        stream.println(stack);}
        else{//In case stack is empty, a message is displayed
            stream.println("The stack is empty");
        }
    }

    public int size(){
        return size;
    }// returns the size of stack in O(1) time 

}