import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.util.Random;
import java.math.*;

public class Comparisons {
    public static void main(String[] args) {
        try{
            Random random = new Random();
            int[] n_values ={100,150,250,350,450,500,600};
            String filename;
        for(int n : n_values){//The outer for-loop is used to define the name of each file,based on the number of jobs it contains
            //------------------------Test data creation------------------------------ 
            //The below code is in comments,because there is no need for test data files to be created more than once  
            /*for(int fileIndex=1;fileIndex<=10;fileIndex++){
                FileWriter writer = new FileWriter(new File("data\\D_input_"+n+"Jobs_"+fileIndex+".txt"));
                writer.write((int)Math.sqrt(n)+"\n");
                writer.write(n+"\n");
                for(int jobIndex=1;jobIndex<=n;jobIndex++){
                    writer.write(jobIndex+" "+random.nextInt(100)+"\n");
                }
                writer.close();
            }*/
            int cur_makespan=0;//Current makespan for this particular file for both algorithms 1 and 2 
            int totalMakespan1=0;//Totalmakespan  for all files with n jobs  for algorithm 1
            int totalMakespan2=0;//Totalmakespan  for all files with n jobs  for algorithm 2
            for(int fileIndex=1;fileIndex<=10;fileIndex++){
                filename = "data\\D_input_"+n+"Jobs_"+fileIndex+".txt";//Currently processed file's initialization
                //---------------------------------Algorithm 1---------------------------------------------
                BufferedReader reader = new BufferedReader(new FileReader(new File(filename)));//BufferedReader initialiaztion
                MaxPQ processorsPQ = new MaxPQ();//Processors PQ initialization
            
                Greedy.PQInitialization(reader,processorsPQ);//Processors reading from the file and placement of them in the PQ

                int jobsCounter = Greedy.JobsNumCheck(reader,filename);//counts how many jobs(returns-1 if there is a mismatch between the expected and the found jobs in the file)
                if(jobsCounter==-1){//counts how many jobs(returns-1 if there is a mismatch between the expected and the found jobs in the file)
                    reader.close();
                    return;//If the above condition is true, the program's execution is stopped
                }
                
                reader.reset();//reset the reader to read and process the jobs
                
                Job[] jobs = Greedy.StoreJobs(reader,jobsCounter);//returns the array of Jobs objects,which were read from the file
                for(int index = 1;index<jobs.length;index++)
                    processorsPQ.maxAddJob(jobs[index]);//Adds each job to the processor which has the maximum priority

                cur_makespan = Greedy.FinalMessageAndCalculations(processorsPQ,jobsCounter);//returns the makespan of the currently processed file(displays a message with each processor's load if jobs number is less than 50)
                
                totalMakespan1 += cur_makespan;//It is added to the total makespan of the algorithm 1
                reader.close();
                //---------------------------------Algorithm 2---------------------------------------------
                reader = new BufferedReader(new FileReader(new File("data\\D_input_"+n+"Jobs_"+fileIndex+".txt")));//BufferedReader initialiaztion
                processorsPQ = new MaxPQ();
            
                Greedy.PQInitialization(reader,processorsPQ);//Processors reading from the file and placement of them in the PQ

                jobsCounter = Greedy.JobsNumCheck(reader,filename);//counts how many jobs(returns-1 if there is a mismatch between the expected and the found jobs in the file)
                if(jobsCounter==-1){//counts how many jobs(returns-1 if there is a mismatch between the expected and the found jobs in the file)
                    reader.close();
                    return;//If the above condition is true, the program's execution is stopped
                }
                
                reader.reset();//reset the reader to read and process the jobs
                
                jobs = Greedy.StoreJobs(reader,jobsCounter);//returns the array of Jobs objects,which were read from the file
                Sort.HeapSort(jobs);//It sorts it in descending order
                for(int index = 1;index<jobs.length;index++)
                    processorsPQ.maxAddJob(jobs[index]);//Adds each job to the processor which has the maximum priority

                cur_makespan = Greedy.FinalMessageAndCalculations(processorsPQ,jobsCounter);//returns the makespan of the currently processed file(displays a message with each processor's load if jobs number is less than 50)
                
                totalMakespan2 += cur_makespan;//It is added to the total makespan of the algorithm 2
                reader.close();                
            }
            //--------------------------------------Experiment's results display------------------------------------------------------
            System.out.println("For n="+n+":");
            System.out.println("    The average makespan for algorithm 1 is equal to: "+totalMakespan1/10.0f);
            System.out.println("    The average makespan for algorithm 2 is equal to: "+totalMakespan2/10.0f);
        }
        }
         catch(FileNotFoundException e){
            System.out.println("A FileNotFoundException occured when trying to open the file");
        }
        catch(IOException e){
            System.out.println("An IOException exception occured when reading the file");
        }
        catch(Exception e){
            System.out.println("An Exception occured when reading the file");
        }
    }
}