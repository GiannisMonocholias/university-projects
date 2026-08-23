public class MaxPQ implements PQInterface{
    private Processor[] heap;
    private int size;

    private final int DEFAULT_CAPACITY = 7;

    public MaxPQ()
    {
        heap = new Processor[DEFAULT_CAPACITY + 1];
        size = 0;
    }

     
    public boolean isEmpty(){
        return size == 0;
    }

    public int size(){return size;}//return size in O(1) time

    public Processor max(){
        if (size == 0)
            return null;    
        return heap[1];
    }
    public void maxAddJob(Job j){
        if(!isEmpty())
            heap[1].addJob(j);//Add a job to root's list of processedJobs  
        sink(1);//Restore the heap's property
    }
    public void insert(Processor x){
        if(size >= 0.75*(heap.length))//If the heap is full, icrease its size
            resize();
        heap[++size] = x;//Place, initially, the added element in the last place of the heap 

        swim(size);//Restore heap's property
    }
    
    public Processor getMax(){
        if(size == 0)
            return null;
        Processor root = heap[1];//save the root to a temporary variable in order to return it
        heap[1] = heap[size];//set the root of the heap to be equal to the rightmost leaf of the heap 
        size--;//decrement size

        sink(1);//Restore heap's property

        return root;
    }
    
    private void sink(int i) {
        while (2 * i <= size) { //While there is left child
            int left = 2 * i;
            int right = left + 1;
            int max = left;//Initially, set max to be the left child
    
           
            if (right <= size && heap[right].compareTo(heap[left]) > 0) {//if there is right child and is bigger than the left one, then set max to be right 
                max = right;
            }
    
            
            if (heap[i].compareTo(heap[max]) >= 0) {//if the parent node has bigger value than its children, then  heap's property is satisfied
               break;
            }
    
            //If  heap's property is not satisfied, exchange the max child with its parent
            Processor temp = heap[max];
            heap[max] = heap[i];
            heap[i] = temp;
    
            
            i = max;//Update i to be max for the next loop
        }
    }

    private void resize(){
        Processor[] tempHeap = new Processor[2*(heap.length-1)];//declare a new temporary array and initialize it

        for(int i = 0 ;i<=size;i++)
            tempHeap[i] = heap[i];//copy the elements of the old array
        
        heap = tempHeap;//set heap array equal to the temporary array
    }

    private void swim(int i){
        if(i==1)//If we are on the root
            return;

        int parent = i/2;
        Processor temp;

        while(i!=1 && heap[i].compareTo(heap[parent])>0)//If we are not on the root and current node is bigger than its parent
        {
            //Exchange the child and the parent node
            temp = heap[i];
            heap[i] = heap[parent];
            heap[parent] = temp;
            //update parent and i for the next loop
            i = parent;
            parent = i/2;
        }
        
    }
}
