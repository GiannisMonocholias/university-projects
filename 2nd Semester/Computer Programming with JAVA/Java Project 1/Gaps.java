import java.util.ArrayList;

class Gaps extends Question{
    
    private ArrayList<String> unorderedWords;
    private ArrayList<String> orderedWords;

    Gaps(String code, String description,ArrayList<String> unorderedwords,ArrayList<String> orderedwords){
        super(code,description);
        this.unorderedWords = unorderedwords;
        this.orderedWords = orderedwords;
    }

    public ArrayList<String> getUnorderedWords() {
        return unorderedWords;
    }

    public ArrayList<String> getOrderedWords() {
        return orderedWords;
    }
    
    public String getcode(){
        return code;
    }

    public String getdescription(){
        return description;
    }

    private String displayUnorederedWords(){
        String choices = "\nPut the following words in the correct order to fill the gaps:\n";
        for (String a: unorderedWords ){
            choices += a +"\n";
        }
        return choices;
    }

    public String toString(){
        return super.toString() + displayUnorederedWords();
    }

}