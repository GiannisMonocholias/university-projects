import java.io.BufferedReader;
import java.io.IOException;
import java.util.StringTokenizer;

class AnswerOneWord extends Answer{
    
    private String evaluatedAnswer;

    AnswerOneWord(Evaluated evaluated,Question question,String evaluatedAnswer){
        super(evaluated, question);
        this.evaluatedAnswer = evaluatedAnswer;
    }

    AnswerOneWord(){}

    public String getevaluatedAnswer(){
        return evaluatedAnswer;
    }
    public boolean parse(BufferedReader reader){
        try{
            reader.reset();
            String line,code,code2;
            code=code2="";
            StringTokenizer st;
            String token;
            boolean codeFound,code2Found,wordFound;
            codeFound=code2Found=wordFound = false;
            line = reader.readLine();
            while(!(line.trim().equals("}"))){
                while(line.trim().isEmpty())//skip empty lines
                    line = reader.readLine(); 
                if ((line.trim().equals("}"))) break;
                st = new StringTokenizer(line);
                token = st.nextToken();
                if(token.toUpperCase().equals("RATEDPERSON_CODE") && !(codeFound)){
                    token = st.nextToken();
                    code = token;
                    codeFound = true;
                }
                else if (token.toUpperCase().equals("QUESTION_CODE") && !(code2Found)){
                    token = st.nextToken();
                    code2 = token;
                    code2Found = true;
                }
                else if (token.toUpperCase().equals("WORD") && !(wordFound)){
                    token = st.nextToken();
                    evaluatedAnswer = token;
                    wordFound = true;
                }
                line = reader.readLine();
            }
            //-------------------------- check if atributes found ---------------------
            if (codeFound && code2Found && wordFound){
                if(ReadFiles.evals.keySet().contains(code) && ReadFiles.questions.keySet().contains(code2)){
                    evaluated = ReadFiles.evals.get(code);
                    question = ReadFiles.questions.get(code2);
                    return true;
                }//check if both evaluated and question exist
                return false;
            }
            else{
                System.out.println("----------------------------------------------------------");
                System.out.println("Insufficient data, answer's fields cannot be read");
                System.out.println("----------------------------------------------------------");
                return false;
            }
        }
        catch(IOException e){
            System.out.println("Something went wrong while reading the Questions' file");
            return false;
        }
    }

    public String toString(){
        return super.toString() + evaluatedAnswer + "\n";
    }
}