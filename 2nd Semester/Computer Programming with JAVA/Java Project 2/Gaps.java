import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

class Gaps extends Question{
    
    private ArrayList<String> unorderedWords;
    private ArrayList<String> orderedWords;

    Gaps(String code, String description,ArrayList<String> unorderedwords,ArrayList<String> orderedwords){
        super(code,description);
        this.unorderedWords = unorderedwords;
        this.orderedWords = orderedwords;
    }
    Gaps(){
        unorderedWords = new ArrayList<String>();
        orderedWords = new ArrayList<String>();
    }

    public ArrayList<String> getUnorderedWords() {
        return unorderedWords;
    }

    public ArrayList<String> getOrderedWords() {
        return orderedWords;
    }
    
    private String displayUnorederedWords(){
        String choices = "\nPut the following words in the correct order to fill the gaps:\n";
        for (String a: unorderedWords ){
            choices += a +"\n";
        }
        return choices;
    }

    public String displayUnorederedWords2(){
        String unorWords = "";
        for(String s: unorderedWords){
            unorWords += s + ",";
        }
        unorWords = unorWords.substring(0,unorWords.length()-1);
        return unorWords;
    }

    public String displayOrderedWords(){
        String orderWords = "";
        for(String s: orderedWords){
            orderWords += s + ",";
        }
        orderWords = orderWords.substring(0,orderWords.length()-1);
        return orderWords;
    }
   
    public boolean parse(BufferedReader reader){
        try{
            reader.reset();
            StringTokenizer st;
            String token;
            String line = reader.readLine();
            boolean codeFound,descrFound,unordWordsFound,ordWordsFound;
            codeFound=descrFound=unordWordsFound=ordWordsFound=false;
            while(!line.trim().equals("}")){
                    while(line.trim().isEmpty())//skip empty lines
                        line = reader.readLine(); 
                    if ((line.trim().equals("}"))) break;
                    st = new StringTokenizer(line);
                    token = st.nextToken();
                    if(token.equalsIgnoreCase("CODE")&& !(codeFound)){
                        token = st.nextToken();
                        code = token;
                        codeFound = true;
                    }
                    else if (token.equalsIgnoreCase("DESCR")&& !(descrFound)){
                        description = line.trim().substring(6);
                        descrFound = true;
                    }
                    else if(token.equalsIgnoreCase("UNORDEREDWORDS")&& !(unordWordsFound)){
                        st = new StringTokenizer(line.trim().substring(16,line.trim().length()-1),",");
                        while (st.hasMoreTokens()){
                            unorderedWords.add(st.nextToken());
                        }
                        unordWordsFound = true;
                    }
                    else if (token.equalsIgnoreCase("ORDEREDWORDS")&& !(ordWordsFound)){
                        st = new StringTokenizer(line.trim().substring(14,line.trim().length()-1),",");
                        while (st.hasMoreTokens()){
                            orderedWords.add(st.nextToken());
                        }
                        ordWordsFound = true;
                    }
                line = reader.readLine();
                if (line == null) break;            
            }
            //-------------------------- check if atributes found ---------------------
            if(codeFound & descrFound & unordWordsFound & ordWordsFound)
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

    }//parse

    public String toString(){
        return super.toString() + displayUnorederedWords();
    }

}//Gaps class