
public class List  {

    public Node<Job> head = null;
    public Node<Job> tail = null;
    int size = 0;
   
    public List() {
    }

    public boolean isEmpty() {
        return head == null;
    }

   
    public void insertAtFront(Job data) {
        Node<Job> n = new Node<Job>(data);

        if (isEmpty()) {
            head = n;
            tail = n;
        } else {
            n.setNext(head);
            head = n;
        }
        size++;
    }

   
    public void insertAtBack(Job data) {
        Node<Job> n = new Node<Job>(data);

        if (isEmpty()) {
            head = n;
            tail = n;
        } else {
            tail.setNext(n);
            tail = n;
        }
        size++;
    }

  
    public Job removeFromFront() {
        if (isEmpty()){
            System.out.println("No removal executed,the list is empty");
            return null;
        }

        Job data = head.getData();

        if (head == tail)
            head = tail = null;
        else
            head = head.getNext();

        size--; 
        
        return data;
    }

    public Job removeFromBack()  {
        if (isEmpty()){
            System.out.println("No removal executed,the list is empty");
            return null;
        }

        Job data = tail.getData();

        if (head == tail)
            head = tail = null;
        else {
            Node<Job> iterator = head;
            while (iterator.getNext() != tail)
                iterator = iterator.getNext();

            iterator.setNext(null);
            tail = iterator;
        }

        size--;

        return data;
    }

   
    public void printList(){
        if (!isEmpty()){ 
        String list = "";//String to be printed initialization
        list += "HEAD -> "+head.getData() +" " ;
        for(Node<Job> iterator = head.getNext();iterator!=null;iterator = iterator.getNext())
            list += iterator.getData() + " ";
        System.out.println(list+"<- TAIL");}
        else{//In case stack is empty, a message is displayed
            System.out.println("The stack is empty");
        }
    }
}
