class Evaluated{
    
    private String code;
    private String surname;
    private String name;

    Evaluated(String code,String surname,String name){
        this.code = code;
        this.surname = surname;
        this.name = name;
    }

    public String getcode(){
        return code;
    }

    public String getsurname(){
        return surname;
    }

    public String getname(){
        return name;
    }
    
    public String toString(){
        return String.format("Code: %s\nSurname: %s\nName: %s\n",code,surname,name);
    }

}