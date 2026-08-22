class OneWord extends Question{
   
    private String correctAnswer;

    OneWord(String code, String description,String correctAnswer){
        super(code,description);
        this.correctAnswer = correctAnswer;
    }

    public String getcode(){
        return code;
    }
    
    public String getdescription(){
        return description;
    } 

    public String getCorrectAnswer(){
        return correctAnswer;
    }

    public String toString(){
        return super.toString();
    }
}