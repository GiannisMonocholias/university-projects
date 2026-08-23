class Processor implements Comparable<Processor>{
    private int id;
    private List processedJobs;
    public Processor(int id){
        this.id = id;
        processedJobs = new List();
    }
    public int getTotalProcessingTime()
    {
        int sum = 0;
        for(Node<Job> j = processedJobs.head;j!=null;j=j.getNext()){//Iterate over processed jobs list and increase the sum variable
            sum+= j.getData().time;
        }
        return sum;
    }
    
    public void addJob(Job job){
        processedJobs.insertAtBack(job);//add a job to the processor
    }
    
    int getId(){return id;}

    public int compareTo(Processor B)
    {
        if(getTotalProcessingTime() < B.getTotalProcessingTime())//If this processor has less workload, should take priority
            return 1;
        else if(getTotalProcessingTime() > B.getTotalProcessingTime())
            return -1;
        else//If both processors have equal workload, give priority based on their id numbers
            return id < B.id? 1:-1;
    }

    public String toString(){
        String jobs_Times = "";
        for(Node<Job> j = processedJobs.head;j!=null;j=j.getNext()){
            jobs_Times += j.getData().time+" ";
        }
        return String.format("id %d, load=%d: %s", id,getTotalProcessingTime(),jobs_Times);
    }
}