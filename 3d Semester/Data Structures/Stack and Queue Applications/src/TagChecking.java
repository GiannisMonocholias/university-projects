import java.io.*;

class TagChecking{
    public static void main(String args[]){
        try{ 
        BufferedReader reader = new BufferedReader(new FileReader(args[0]));//BufferedReader initialiaztion
        StringStackImpl tagsStack = new StringStackImpl();//Stack to be used initialiaztion
        boolean eof = false;//End of file flag
        String tag;
        String curLine;//current line of the file 
        String singleTags[] = {"<br>","<img>"};//An array of the tags that do not need a closing tag
        boolean singleTag;//checks if a tag belongs to the singleTags array
        String stackTop = null; 
        boolean wrongMatching = false; 
        //-----------------------File reading loop------------------------------
        while (!eof){
            curLine = reader.readLine();
            if (curLine == null)//If there are no more lines, set eof to true to end the loop
                eof = true;
            else{
                for(int index = 0;index < curLine.length();index++){//Read each line's characters one by one
                    if(curLine.charAt(index) == '<'){//If the character '<' is located, a tag may be starting
                        tag = "";//tag initialization
                        while(curLine.charAt(index) != '>'){//While the character '>' is not located on the current line
                            tag += curLine.charAt(index);
                            index++;
                            if (index >= curLine.length()) break;//When index equals the number of characters the current line has,
                             //we break the loop, so that not to be thrown an exception when calling "charAt" method
                        }
                        if (index < curLine.length())//If the current condition is true, we exited the previous while loop because the closing character ">" was found
                            tag += curLine.charAt(index);//So we add it to the tag to complete it
                        singleTag = false;
                        //-------------------Check if the tag does not need to close------------------------
                        for(String s: singleTags)
                            if(s.equals(tag)){
                                singleTag = true;//If it belongs to the singleTags array, singleTag variable is set true
                                break;    
                            }
                        
                    
                        if(!tag.contains("/") && tag.contains(">") && !singleTag)//Check if the tag is an opening tag
                            tagsStack.push(tag);//If it is indeed an opening tag, we push it to the top of the stack
                        if(tag.contains("/") && tag.contains(">")){//Check if the tag is an closing tag
                                if(!tagsStack.isEmpty()){ 
                                    stackTop = tagsStack.peek();//access to the stack's top data, in order to be compared with the found closing tag
                                    if(tag.trim().substring(2,tag.length()).equals(stackTop.trim().substring(1,stackTop.length()))){
                                    //if the closing tag's content(after '/' character) is equal to the data of the top of the stack(after '<' character)
                                    tagsStack.pop();//we successfully remove the top of the stack
                                }
                                else{
                                    wrongMatching = true;//A tags mismatch was found,so the tags in the file are mismatched
                                    eof = true;break;//and therefore the the for and the while loop will break
                                }
                            }
                            else{//The stack is empty and a closing tag was found, so there is again mismatch
                               wrongMatching = true; 
                               eof = true; break;
                            }
                        }
                    }
                }
            }

        }
        if(tagsStack.isEmpty() && !wrongMatching)//if no mismatched tag was found and the final stack is empty, the tags are correctly matched in the file
            System.out.println("The tags of the \"" + args[0] + "\" file are correctly matched");
        else
            System.out.println("The tags of the \"" + args[0] + "\" file are  not correctly matched");
        

        reader.close();
        }
        catch(FileNotFoundException e){
            System.out.println("A FileNotFoundException occured when trying to open the \"" + args[0] + "\" file");
        }
        catch(IOException e){
            System.out.println("An IOException exception occured when reading the \"" + args[0] + "\" file");
        }
        catch(Exception e){
            System.out.println("An Exception occured when reading the \"" + args[0] + "\" file");
        }
    }

}