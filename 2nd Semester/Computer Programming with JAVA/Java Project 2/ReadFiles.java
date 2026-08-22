import java.io.*;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.StringTokenizer;


class ReadFiles {

    static LinkedHashMap<String,Evaluated> evals = new LinkedHashMap<String,Evaluated>();
    static LinkedHashMap<String,Question> questions = new LinkedHashMap<String,Question>();
    static ArrayList<Answer> answers = new ArrayList<Answer>();
    static ArrayList<Integer> numOfCorAnswers = new ArrayList<Integer>();
    static ArrayList<Integer> numOfTotalAnswers = new ArrayList<Integer>(); 

    static void parseEvaluatedList(String filename){
        try{
            FileReader fr = new FileReader(filename);           
            BufferedReader reader=new BufferedReader(fr);
            System.out.println("Evaluated's file opened"); 
            String line;
            Evaluated evaluated = null;  
            boolean isOk; 
            line = reader.readLine();
            boolean eof = false;         
            while(!eof){
                line = reader.readLine();
                if(line == null)
                    eof = true;
                else{
                    if(line.trim().toUpperCase().equals("RATEDPERSON")){
                        while(!(line.trim().equals("}")) && (!eof)){ 
                            line = reader.readLine();
                            if(line.trim().equals("{")){ 
                                evaluated = new Evaluated();
                                isOk = evaluated.parse(reader);
                                if (isOk)
                                    evals.put(evaluated.getcode(),evaluated);
                                break;
                            }   
                        }    
                    } 
                }   
            }
        reader.close();
        System.out.println("Evaluated's file closed");
        System.out.println("-----------------------");
        }
        catch (Exception e){System.out.println("Something went wrong while reading the Evaluateds' file");}
   }//parseEvaluatedList

   static void parseQuestionList(String filename){
       try{
            FileReader fr = new FileReader(filename);           
            BufferedReader reader=new BufferedReader(fr);
            System.out.println("Questions' file opened");
            String line;
            boolean isOk = false;
            Question question = null;
            StringTokenizer st;
            String token;
            boolean eof = false;
            while (!eof){
                line = reader.readLine();  
                if(line == null)
                    eof = true;
                else{
                    if (line.trim().equals("QUESTION")){
                        line = reader.readLine();           
                        while (line.trim().isEmpty())//skip empty lines
                            line = reader.readLine(); 
                        if (line.trim().equals("{")){
                            reader.mark(3000);
                            while(!(line.trim().equals("}")) && (!eof)){
                                line = reader.readLine();
                                while(line.trim().isEmpty()) //skip empty lines
                                    line = reader.readLine(); 
                                st = new StringTokenizer(line);
                                token = st.nextToken();
                                if (token.equalsIgnoreCase("TYPE")){ 
                                    token = st.nextToken();
                                   if(token.equalsIgnoreCase("MC")){
                                        question = new MultipleChoice();    
                                   }
                                   else if (token.equalsIgnoreCase("WORD")){
                                        question = new OneWord();  
                                    }//One Word
                                    else if (token.equalsIgnoreCase("FILL")){
                                        question = new Gaps();
                                    }//Gaps
                                    isOk = question.parse(reader); 
                                    if (isOk)
                                       questions.put(question.getCode(),question);
                                    break;
                                } 
                            }   
                        }
                    }   
                }   
            }
            reader.close();
            System.out.println("Questions' file closed");
            System.out.println("----------------------");
        }
        catch(Exception e) {System.out.println("Something went wrong while reading the Questions' file");}
   }//parseQuestionList
   
   static void parseAnswerList(String filename){
    try{
        FileReader fr = new FileReader(filename);           
        BufferedReader reader=new BufferedReader(fr);
        System.out.println("Answers' file opened");
        String line;
        boolean isOk;
        Answer a = null;
        StringTokenizer st;
        boolean eof = false;
        String token;
        while(!eof){
            line = reader.readLine();
            if (line == null)
                eof = true;
            else{
                if(line.trim().toUpperCase().equals("ANSWER")){
                    line = reader.readLine();
                    while (line.trim().isEmpty())//skip empty lines
                        line = reader.readLine();
                    if(line.trim().equals("{")){
                        reader.mark(2048);
                        while(!(line.trim().equals("}")) && (!eof)){
                            line = reader.readLine();
                            while(line.trim().isEmpty())//skip empty lines
                                line = reader.readLine();
                            st = new StringTokenizer(line);           
                            token = st.nextToken();
                            if(token.toUpperCase().equals("TYPE")){
                                token = st.nextToken();
                                if(token.toUpperCase().equals("MC"))
                                    a = new AnswerMul();
                                else if (token.toUpperCase().equals("WORD"))
                                    a = new AnswerOneWord();
                                else if (token.toUpperCase().equals("FILL"))
                                    a= new AnswerGaps();
                                isOk = a.parse(reader);
                                if (isOk && !(answers.contains(a)))
                                    answers.add(a);
                                break;     
                            }    
                        } 
                    }
                }
            }
        }
        reader.close();
        System.out.println("Answers' file closed");
        System.out.println("--------------------");
    }
    catch(Exception e){System.out.println("Something went wrong while reading the Questions' file");}
   }//parseAnswerList

}