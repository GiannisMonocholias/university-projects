import java.io.PrintStream;
import java.util.NoSuchElementException;

class DoubleQueueImpl implements DoubleQueue{

    private Node<Double> head;
    private Node<Double> tail;
    private int size;

    DoubleQueueImpl(){}

    public boolean isEmpty(){return head == null && tail == null;}
    
    public void put(double item){
        Node<Double> tempNode = new Node<Double>(item);
        if(isEmpty()){//Check if the queue is empty
            head = tail = tempNode;
        }
        else{
            tail.setNext(tempNode);//Set tail's next Node to be the one that was created in the method
            tail = tempNode;//And make tail point to tempNode
        }
        size++;//Queue's size increment, after the insertion of a Node
        tempNode = null;
    }
    
    public double get() throws NoSuchElementException{
        if(isEmpty())//If the queue is empty a "NoSuchElementException" is thrown 
            throw new NoSuchElementException();
        
        double tempData = head.getData();//assign head's data to a temporary variable which will be returned
        if(head == tail)// One element if the queue, head and tail point to null
            head = tail = null;
        else    
            head = head.getNext();
        size--;//Queue's size decrement, after the removal of a Node
        return tempData;     
    }
    
    public double peek() throws NoSuchElementException{
        if(isEmpty())//If the queue is empty a "NoSuchElementException" is thrown
            throw new NoSuchElementException();
        return head.getData();//Otherwise the data of the head is returned
    }

    public void printQueue(PrintStream stream){
        if(!isEmpty()){//When Queue has elements
        String queue = "";//String to be printed initialization
        for(Node<Double> iterator = head;iterator!=null;iterator = iterator.getNext()){
            if(iterator.getNext() != null)
                queue += String.format("%f -> ",iterator.getData());
            else
                queue += String.format("%f",iterator.getData());
        }
        stream.println(queue);
       }
       else{//In case Queue is empty, a message is displayed
        stream.println("The queue is empty");
       }
    }


    public int size(){return size;} // returns the size of Queue in O(1) time
    
   
}