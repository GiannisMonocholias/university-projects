import java.io.*;

public class WriteFiles {
    
    static void CreateQuestionfile(String file){
        
        System.out.println(" >>>>>>> Write data from LINKED HASHMAP to FILE...");        
        FileWriter writer = null;

        try {
            writer = new FileWriter(new File(file));
            writer.write("QUESTION_LIST\n{\n");

            for(Question q :ReadFiles.questions.values()){
                
                if(q instanceof MultipleChoice){
                    writer.write("\tQUESTION\n" + "\t{\n" + 
                    "\t\tTYPE MC\n" +
                    "\t\tCODE " + q.getCode() + 
                    "\n\t\tDECSR " + q.getdescription() +
                    "\n\t\tANSWERS \"" + ((MultipleChoice)q).displayAltAnswers2() +"\"\n" + 
                    "\t\tCORRECT ANSWERS \"" + ((MultipleChoice)q).displaycorrectAnswers() + "\"\n" +     
                    "\t}\n");

                }//MultipleChoice
                else if(q instanceof OneWord){
                    writer.write("\tQUESTION\n" + "\t{\n" + 
                    "\t\tTYPE WORD\n" +
                    "\t\tCODE " + q.getCode() + 
                    "\n\t\tDECSR " + q.getdescription() +  
                    "\n\t\tWORD " + ((OneWord)q).getCorrectAnswer() +
                    "\n\t}\n");

                }//Oneword
                else if(q instanceof Gaps){
                    writer.write("\tQUESTION\n" + "\t{\n" +
                    "\t\tTYPE FILL\n" +
                    "\t\tCODE " + q.getCode() +
                    "\n\t\tDECSR " + q.getdescription() + 
                    "\n\t\tUNORDERED WORDS \"" + ((Gaps)q).displayUnorederedWords2() + "\"\n" +
                    "\t\tORDERED WORDS \"" + ((Gaps)q).displayOrderedWords() + "\"\n" + 
                    "\t}\n");
                }//Gaps
            }//end for
            writer.write("}");
            writer.close();

        }//try
        catch(IOException e){
            System.err.println("Error writing file.");
        }//catch

    }//end CreateQuestionfile

    static void CreateAnswerfile(String file){

        System.out.println(" >>>>>>> Write data from ARRAYLIST to FILE...");        
        FileWriter writer = null;

        try{
            writer = new FileWriter(new File("Answer_list2.txt"));
            writer.write("ANSWER_LIST\n{\n");

            for(Answer a:ReadFiles.answers){

                if(a instanceof AnswerMul){
                    writer.write("\tANSWER\n" + "\t{\n" + 
                    "\t\tTYPE MC\n" + 
                    "\t\tRATEDPERSON_CODE " + a.getEvaluatedCode() +
                    "\n\t\tQUESTION_CODE " + a.getQuestionCode() + 
                    "\n\t\tANSWERS \"" + ((AnswerMul)a).displayEvaluatedAnswers1_2() + "\"\n" +
                    "\t}\n"
                    );

                }//AnswerMul
                else if(a instanceof AnswerOneWord){
                    writer.write("\tANSWER\n" + "\t{\n" +  
                    "\t\tTYPE WORD\n" + 
                    "\t\tRATEDPERSON_CODE " + a.getEvaluatedCode() +
                    "\n\t\tQUESTION_CODE " + a.getQuestionCode() + 
                    "\n\t\tWORD " + ((AnswerOneWord)a).getevaluatedAnswer() + 
                    "\n\t}\n"
                    );

                }//AnswerOneWord
                else if(a instanceof AnswerGaps){
                    writer.write("\tANSWER\n" + "\t{\n" + 
                    "\t\tTYPE FILL\n" + 
                    "\t\tRATEDPERSON_CODE " + a.getEvaluatedCode() +
                    "\n\t\tQUESTION_CODE " + a.getQuestionCode() + 
                    "\n\t\tWORDLIST \"" + ((AnswerGaps)a).displayEvaluatedAnswers2_2() + "\"\n" +
                    "\t}\n"
                    ); 

                }//AnswerGaps
            }//end for
            writer.write("}");
            writer.close();

        }//try
        catch(IOException e){
            System.err.println("Error writing file.");
        }//catch

    }//end CreateAnswer
    static void CreateEvaluatedFile(String file){
        System.out.println(" >>>>>>> Write data from LINKED HASHMAP to FILE...");        
        FileWriter writer = null;

        try{
            writer = new FileWriter(new File(file));
            writer.write("RATEDPERSON_LIST\n{\n");
            int count = 0;
            
            
            for(Evaluated e : ReadFiles.evals.values()){
                writer.write("\tRATEDPERSON\n" + "\t{\n" +  
                    "\t\tCODE " + e.getcode() +
                    "\n\t\tFIRSTNAME " + e.getname() + 
                    "\n\t\tSURNAME " + e.getsurname() + "\n"
                     +"\t}\n");
            }//end for
            writer.write("}");
            writer.close();

        }//try
        catch(IOException e){
            System.err.println("Error writing file.");
        }//catch

    }
}//end WriteFiles
