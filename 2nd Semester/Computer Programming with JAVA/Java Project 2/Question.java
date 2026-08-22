import java.io.BufferedReader;

abstract class Question{
    
    protected String code;
    protected String description;

    Question(String code,String description){
        this.code = code;
        this.description = description;
    }
    Question(){}
    public abstract boolean parse(BufferedReader reader); 

    public String getCode(){
        return code;
    }

    public String getdescription(){
        return description;
    }

    public String toString(){
        return String.format("Code: %s\nDescription: %s\n", code, description);
      }

}