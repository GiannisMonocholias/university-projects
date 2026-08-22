import java.io.BufferedReader;
import java.util.ArrayList;
import java.util.StringTokenizer;

class MultipleChoice extends Question{

    private ArrayList<String> altAnswers;
    private ArrayList<Integer> correctAnswers;
    
    MultipleChoice(String code, String description, ArrayList<String> altAnswers ,ArrayList<Integer>correctAnswers){
        super(code,description);
        this.altAnswers = altAnswers;
        this.correctAnswers = correctAnswers;
    }
    MultipleChoice(){
        altAnswers= new ArrayList<>();
        correctAnswers = new ArrayList<>();
    }

    public ArrayList<String> getAltAnswers(){
        return altAnswers;
    }

    public ArrayList<Integer> getcorrectAnswers(){
        return correctAnswers;
    }

    public String getcode(){
        return code;
    }

    public String getdescription(){
        return description;
    }

    private String displayAltAnswers(){
        String choices = "\nSelect all the correct choices:\n";
        for(String a: altAnswers){
            choices += a + "\n";
        }
        return choices;
    }

    public String displayAltAnswers2(){
        String altansw = "";
        for(String s: altAnswers){
            altansw += s + ",";
        } 
        altansw = altansw.substring(0, altansw.length()-1);
        return altansw;
    }

    public String displaycorrectAnswers(){
        String coransw = "";
        for(int c: correctAnswers){
            coransw += c + ",";
        }
        coransw = coransw.substring(0,coransw.length()-1);
        return coransw;
    }
    
    public  boolean parse(BufferedReader reader){
        try{
            reader.reset();
            StringTokenizer st;
            String token;
            String line;
            line = reader.readLine();
            boolean codeFound,descrFound,answersFound,corAnswersFound;
            codeFound=descrFound=answersFound=corAnswersFound=false;
            while(!(line.trim().equals("}"))){
                    while(line.trim().isEmpty())//skip empty lines
                        line = reader.readLine();
                    if ((line.trim().equals("}"))) break; 
                    st = new StringTokenizer(line);
                    token = st.nextToken();
                    if(token.toUpperCase().equals("CODE") & !(codeFound)){
                        token = st.nextToken();
                        code = token;
                        codeFound = true;
                    } 
                    else if (token.toUpperCase().equals("DESCR") & !(descrFound)){
                        description = line.trim().substring(6);
                        descrFound = true;
                    }
                    else if (token.toUpperCase().equals("ANSWERS") & !(answersFound)){
                        st = new StringTokenizer(line.trim().substring(9,line.trim().length()-1),",");
                        while (st.hasMoreTokens())
                            altAnswers.add(st.nextToken());
                        answersFound = true;
                    }
                    else if (token.toUpperCase().equals("CORRECTANSWERS") & !(corAnswersFound)){
                        st = new StringTokenizer(line.trim().substring(16,line.trim().length()-1),",");
                        while (st.hasMoreTokens())
                            correctAnswers.add(Integer.parseInt(st.nextToken()));
                        corAnswersFound = true;
                    }
                        line = reader.readLine();
                        if (line == null) break;
            }
            //-------------------------- check if atributes found ---------------------
            if(codeFound && descrFound && answersFound && corAnswersFound)
                return true;
            else{
                System.out.println("----------------------------------------------------------");
                System.out.println("Insufficient data, question's fields cannot be read");
                System.out.println("----------------------------------------------------------");
                return false;
            }
        }
            catch(Exception e){
                System.out.println("Something went wrong while reading the Questions' file");
                return false;}
        }
    public String toString(){
        return super.toString() + displayAltAnswers() ;
    } 
}   
 