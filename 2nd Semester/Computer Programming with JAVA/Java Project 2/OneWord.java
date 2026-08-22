import java.io.BufferedReader;
import java.io.IOException;
import java.util.StringTokenizer;

class OneWord extends Question{
   
    private String correctAnswer;

    OneWord(String code, String description,String correctAnswer){
        super(code,description);
        this.correctAnswer = correctAnswer;
    }
    OneWord(){}

    public String getcode(){
        return code;
    }
    
    public String getdescription(){
        return description;
    } 

    public String getCorrectAnswer(){
        return correctAnswer;
    }
   
    public boolean parse(BufferedReader reader){
        try{
            reader.reset();
            StringTokenizer st;
            String token;
            String line;
            line = reader.readLine();
            boolean codeFound,descrFound,corAnswerFound;
            codeFound=descrFound=corAnswerFound=false;
            while(!line.trim().equals("}")){
                    while(line.trim().isEmpty())//skip empty lines
                        line = reader.readLine(); 
                    if ((line.trim().equals("}"))) break;
                    st = new StringTokenizer(line);
                    token = st.nextToken();
                    if(token.toUpperCase().equals("CODE") && !(codeFound)){
                        token = st.nextToken();
                        code = token;
                        codeFound = true;
                    }
                    else if (token.toUpperCase().equals("DESCR") && !(descrFound)){
                        description = line.trim().substring(6);
                        descrFound = true;
                    }
                    else if (token.toUpperCase().equals("WORD") & !(corAnswerFound)){
                        token = st.nextToken();
                        correctAnswer = token;
                        corAnswerFound = true;
                    }
                line = reader.readLine();
                if (line == null) break;
            }
            //-------------------------- check if atributes found ---------------------
            if (codeFound & descrFound & corAnswerFound)
                return true;
            else{
                System.out.println("----------------------------------------------------------");
                System.out.println("Insufficient data, question's fields cannot be read");
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
        return super.toString();
    }
}