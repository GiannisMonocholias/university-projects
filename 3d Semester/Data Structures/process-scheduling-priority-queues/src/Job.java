class Job implements Comparable<Job>{
    int id;
    int time;

    public Job(){}
    public Job(int id,int time){
        this.id = id;
        this.time = time;
    }

    public String toString(){return Double.toString(time);}

    public int compareTo(Job other){
        return time<other.time?1:-1;
    }
}