class AnswerOneWord extends Answer{
    
    private String evaluatedAnswer;

    AnswerOneWord(Evaluated evaluated,Question question,String evaluatedAnswer){
        super(evaluated, question);
        this.evaluatedAnswer = evaluatedAnswer;
    }

    public String getevaluatedAnswer(){
        return evaluatedAnswer;
    }


    public String toString(){
        return super.toString() + evaluatedAnswer + "\n";
    }
}