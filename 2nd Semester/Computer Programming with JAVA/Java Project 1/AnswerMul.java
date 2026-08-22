import java.util.ArrayList;

class AnswerMul extends Answer{
    
   private ArrayList<Integer> evaluatedAnswers1;

    AnswerMul(Evaluated evaluated,Question question , ArrayList<Integer> evaluatedAnswers1){
        super(evaluated, question);
        this.evaluatedAnswers1 = evaluatedAnswers1;
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
    public String toString(){
        return super.toString() + displayEvaluatedAnswers1() ;
    }

}