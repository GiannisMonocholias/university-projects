import java.util.ArrayList;

class AnswerGaps extends Answer{
    
    private ArrayList<String> evaluatedAnswers2;

    AnswerGaps(Evaluated evaluated,Question question,ArrayList<String> evaluatedAnswers2){
        super(evaluated, question);
        this.evaluatedAnswers2 = evaluatedAnswers2;    
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

    public String toString(){
        return super.toString() + displayEvaluatedAnswers2() +"\n";
    }
}
