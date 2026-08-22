import java.util.ArrayList;

class MultipleChoice extends Question{

    private ArrayList<String> altAnswers;
    private ArrayList<Integer> correctAnswers;
    
    MultipleChoice(String code, String description, ArrayList<String> altAnswers ,ArrayList<Integer>correctAnswers){
        super(code,description);
        this.altAnswers = altAnswers;
        this.correctAnswers = correctAnswers;
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

    public String toString(){
        return super.toString() + displayAltAnswers() ;
    }
} 