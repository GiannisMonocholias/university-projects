import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

class AnswerGaps extends Answer{
    
    private ArrayList<String> evaluatedAnswers2;

    AnswerGaps(Evaluated evaluated,Question question,ArrayList<String> evaluatedAnswers2){
        super(evaluated, question);
        this.evaluatedAnswers2 = evaluatedAnswers2;    
    }
    
    AnswerGaps(){
        evaluatedAnswers2 = new ArrayList<String>();
    }

    public ArrayList<String> getEvaluatedAnswers2(){
        return evaluatedAnswers2;
    }

    private String displayEvaluatedAnswers2(){
        String answer="";
        for(String a: evaluatedAnswers2){
            answer += a + "  ";
        }
        return answer;
    }

    public String displayEvaluatedAnswers2_2(){
        String evalAnsw = "";
        for(String a: evaluatedAnswers2){
            evalAnsw += a + ",";
        }
        evalAnsw = evalAnsw.substring(0,evalAnsw.length() - 1);
        return evalAnsw;
    }

    public boolean parse(BufferedReader reader){
        try{
            reader.reset();
            String token,line,code,code2;
            code=code2="";
            boolean codeFound,code2Found,wordListFound;
            codeFound=code2Found=wordListFound=false;
            line = reader.readLine();
            StringTokenizer st;
            while(!(line.trim().equals("}"))){
                while(line.trim().isEmpty())//skip empty lines
                    line = reader.readLine(); 
                if ((line.trim().equals("}"))) break;
                st = new StringTokenizer(line);
                token = st.nextToken();
                if (token.toUpperCase().equals("RATEDPERSON_CODE") && !(codeFound)){
                    token = st.nextToken();
                    code = token;
                    codeFound = true;
                }
                else if (token.toUpperCase().equals("QUESTION_CODE")&& !(code2Found)){
                    token = st.nextToken();
                    code2 = token;
                    code2Found = true;
                }
                else if (token.toUpperCase().equals("WORDLIST") && !(wordListFound)){
                    st = new StringTokenizer(line.trim().substring(10,line.trim().length()-1),",");
                    while (st.hasMoreTokens())
                        evaluatedAnswers2.add(st.nextToken());
                    wordListFound = true;
                }
                line = reader.readLine();
                if (line == null) break;
            }
            //-------------------------- check if atributes found ---------------------
            if (codeFound && code2Found && wordListFound){
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
        return super.toString() + displayEvaluatedAnswers2() +"\n";
    }
}
