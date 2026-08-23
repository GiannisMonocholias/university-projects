import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.StringTokenizer;

class Greedy{
    public static void main(String[] args){
        try{
            String filename = args[0];
            BufferedReader reader = new BufferedReader(new FileReader(filename));//BufferedReader initialiaztion
            MaxPQ processorsPQ = new MaxPQ();
          
            PQInitialization(reader,processorsPQ);//Processors reading from the file and placement of them in the PQ

            int jobsCounter = JobsNumCheck(reader,filename);//counts how many jobs(returns-1 if there is a mismatch between the expected and the found jobs in the file)
            if(jobsCounter==-1){
                reader.close();   
                return;//If the above condition is true, the program's execution is stopped
            }
            
            reader.reset();//reset the reader to read and process the jobs
            
            Job[] jobs = StoreJobs(reader,jobsCounter);//returns the array of Jobs objects,which were read from the file
            for(int index = 1;index<jobs.length;index++)
                processorsPQ.maxAddJob(jobs[index]);//Adds each job to the processor which has the maximum priority


            FinalMessageAndCalculations(processorsPQ,jobsCounter);//returns the makespan of the currently processed file(displays a message with each processor's load if jobs number is less than 50)

            reader.close();
        }
        catch(FileNotFoundException e){
            System.out.println("A FileNotFoundException occured when trying to open the \"" + args[0] + "\" file");
        }
        catch(IOException e){
            System.out.println("An IOException exception occured when reading the \"" + args[0] + "\" file");
        }
        catch(Exception e){
            System.out.println("An Exception occured when reading the \"" + args[0] + "\" file");
        }
    }

    static int JobsNumCheck(BufferedReader reader,String filename) throws IOException{
        String line;
        int jobsCounter = 0;//jobsCounter variable initialization(Will be returned,if the processed file is correctly structured)
        do{
            line = reader.readLine().trim();
        }while(line.trim().isEmpty());//continue reading the file,until a non empty line is found
         
        int totalJobs = Integer.parseInt(line);
        reader.mark(15000);
        line = reader.readLine();

        while (line != null){
            if(!line.trim().isEmpty())//If a job is found
                jobsCounter++;//increment jobsCounter
            line = reader.readLine();//read next line
        }
        if(totalJobs != jobsCounter){//To check if there is a mismatch between the expected and the found jobs in the file
            System.out.println("Error!!!"+totalJobs+" jobs expected and "+jobsCounter+" found in the \""+filename+"\" file");
            reader.close();
            return -1;//If there is a mismatch between the expected and the found jobs in the file
        }
        return jobsCounter;//return the number of jobs,if the file is correctly structured
    }

    static Job[] StoreJobs(BufferedReader reader,int jobsCounter) throws IOException{
            StringTokenizer st;
            String line;
            boolean eof = false;//Variable which checks if the reader reached the end of file 
            line = reader.readLine().trim();
            Job[] jobs= new Job[jobsCounter+1];//Array of all jobs initialization
            int i=1;//The current index of the array
            while(!eof){
                if(line == null)
                 eof = true;
                else{
                    if(!line.isEmpty()){
                        st = new StringTokenizer(line);
                        int id = Integer.parseInt(st.nextToken());
                        int time = Integer.parseInt(st.nextToken());
                        jobs[i++] = new Job(id, time);//Add the current job in the array
                    }
                    line = reader.readLine();
                    if (line != null)
                        line.trim();
                }
            }
            return jobs;//return the created array
    }

    static int FinalMessageAndCalculations(MaxPQ processorsPQ,int jobsCounter){
        int makespan = 0;//Makespan initialization
        Processor selectedProcessor;
        while(!processorsPQ.isEmpty()){//While there are elements in the PQ
            selectedProcessor = processorsPQ.getMax();//Get the root element
            if(selectedProcessor.getTotalProcessingTime() > makespan)
                makespan = selectedProcessor.getTotalProcessingTime();//Set the maximum total processing time as the makespan
             if(jobsCounter<50)//If jobs<50 print details about the load of each processor
                System.out.println(selectedProcessor);
        }
        //If jobs<50 print the makespan of the file
        if(jobsCounter<50)    
            System.out.println("Makespan = "+makespan);
        return makespan;
    }

    static void PQInitialization(BufferedReader reader,MaxPQ processorsPQ) throws IOException{
       String line;
        do{
            line = reader.readLine().trim();
       }while(line.trim().isEmpty());//Check whether there are empty lines before the number of processors 
        int numOfProcessors = Integer.parseInt(line);//Read the number of processors from the file
        for(int i=1;i<=numOfProcessors;i++){
            processorsPQ.insert(new Processor(i));//add each processor in the PQ
       }
    }
}