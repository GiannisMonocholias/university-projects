class Node<T>{
    private T data;
    private Node<T> next = null;
    public Node(T data){
        this.data = data;
    }
    public void setNext(Node<T> nextNode){this.next = nextNode;}
    public void setData(T newData){this.data = newData;}
    public T getData(){return data;}
    public Node<T> getNext(){return next;} 
}