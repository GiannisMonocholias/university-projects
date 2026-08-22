import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

class AnswerMul extends Answer{
    
   private ArrayList<Integer> evaluatedAnswers1;

    AnswerMul(Evaluated evaluated,Question question , ArrayList<Integer> evaluatedAnswers1){
        super(evaluated, question);
        this.evaluatedAnswers1 = evaluatedAnswers1;
    }
    AnswerMul(){
        evaluatedAnswers1 = new ArrayList<Integer>();
    }
   
    public ArrayList<Integer> getEvaluatedAnswer1(){
        return evaluatedAnswers1;
    }
    private String displayEvaluatedAnswers1(){
        String answer="";
        for(int a: evaluatedAnswers1){
            answer += String.format("%d%n", a);
        }
        return answer;
    }

    public String displayEvaluatedAnswers1_2(){
        String evalAnsw = ""; 
        for(int e: evaluatedAnswers1){
            evalAnsw += e + ",";
        }
        evalAnsw = evalAnsw.substring(0,evalAnsw.length() -1); 
        return evalAnsw;
    }

    public boolean parse(BufferedReader reader){
        try{
            reader.reset();
            String line,token,code,code2;
            code=code2="";
            boolean codeFound,code2Found,answersFound;
            codeFound=code2Found=answersFound=false;
            StringTokenizer st;
            line = reader.readLine();
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
                else if (token.toUpperCase().equals("ANSWERS") && !(answersFound)){
                    st = new StringTokenizer(line.trim().substring(9,line.trim().length()-1),",");
                    while(st.hasMoreTokens())
                       evaluatedAnswers1.add(Integer.parseInt(st.nextToken()));
                    answersFound = true;
                }
                line = reader.readLine();
                if (line == null) break;
            }
            //-------------------------- check if atributes found ---------------------
            if (codeFound && code2Found && answersFound){
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
        return super.toString() + displayEvaluatedAnswers1() ;
    }

}