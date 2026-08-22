import java.io.BufferedReader;

abstract class Answer {
    
    protected Evaluated evaluated;
    protected Question  question;
    

    Answer(Evaluated evaluated,Question question){
        this.evaluated = evaluated;
        this.question = question;
    }
    
    Answer(){}

    public String getEvaluatedCode(){
        return evaluated.getcode();
    }
    public String getQuestionCode(){
        return question.code;
    }
    public abstract boolean parse(BufferedReader reader);

    public String toString(){
        return "The evaluated's "+evaluated.getcode()+" answer  of question "+question.code+" is:\n"; 
    } 
}