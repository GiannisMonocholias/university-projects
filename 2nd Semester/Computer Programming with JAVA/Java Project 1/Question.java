abstract class Question{
    
    protected String code;
    protected String description;

    Question(String code,String description){
        this.code = code;
        this.description = description;
    } 

    public String toString(){
        return String.format("Code: %s\nDescription: %s\n", code, description);
      }

}