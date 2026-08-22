import java.io.*;
import java.util.StringTokenizer;
class Evaluated{
    
    private String code;
    private String surname;
    private String name;

    Evaluated(String code,String surname,String name){
        this.code = code;
        this.surname = surname;
        this.name = name;
    }
    Evaluated(){}

    public String getcode(){
        return code;
    }

    public String getsurname(){
        return surname;
    }

    public String getname(){
        return name;
    }
    
    public boolean parse(BufferedReader reader){
        try{
            String line = reader.readLine();
            while (line.trim().isEmpty())//skip empty lines
                    line = reader.readLine();
            StringTokenizer st;
            String token;
            boolean codefound,surnamefound,namefound;
            codefound=surnamefound=namefound = false;
            while(!(line.trim().equals("}"))){
                st = new StringTokenizer(line);
                token = st.nextToken();
                if (token.equalsIgnoreCase("code") & !codefound ){
                    token=st.nextToken();
                    code = token;
                    codefound = true;
                }
                else if(token.equalsIgnoreCase("surname") & !surnamefound){
                    token=st.nextToken();
                    surname = token;
                    surnamefound = true;
                }
                else if(token.equalsIgnoreCase("firstname") & !namefound){
                    token=st.nextToken();
                    name = token;
                    namefound = true;
                }
                line = reader.readLine();
                if(line == null) break;
                while (line.trim().isEmpty())//skip empty lines
                    line = reader.readLine();
            } 
            //-------------------------- check if atributes found ---------------------
            if(!(codefound & namefound & surnamefound)){
                    System.out.println("----------------------------------------------------------");
                    System.out.println("Insufficient data, evaluated's fields cannot be read");
                    System.out.println("----------------------------------------------------------");
                return false;
            }
            else
                return true;
        }
        catch(IOException e) {
            System.out.println("Something went wrong while reading the file");
            return false;
        }
        
    }//parse
    
    public String toString(){
        return String.format("Code: %s\nSurname: %s\nName: %s\n",code,surname,name);
    }

}