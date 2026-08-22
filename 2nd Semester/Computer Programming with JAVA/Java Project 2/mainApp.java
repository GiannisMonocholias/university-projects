/*
TEAM NUMBER:069
TEAM MEMBERS REGISTRY NUMBERS:
3230128
3230132
3230281  
 */
import java.util.*;

class mainApp {

public static void main(String[] args){

    Scanner in = new Scanner(System.in);
    HashMap<String,Evaluated> evals = new HashMap<String,Evaluated>();//evaluated
    ArrayList<Answer> answers = new ArrayList<Answer>();//answers
    LinkedHashMap<String,Question> questions  = new LinkedHashMap<String,Question>();//questions
    String code1,code2,name,surname,type,description,correctAnswer,choice1,choice2,word,currentAnswer;
    ArrayList<String> correctOrder = new ArrayList<String>(),choices= new ArrayList<String>();
    ArrayList<Integer> evaluatedChoices = new ArrayList<Integer>(), correctChoices = new ArrayList<Integer>();
    int choice3,corAnswers,imax,temp,tempTotal,total_answers;
    String operation,tempcode;
    Question quest;
    boolean duplicate = false,correctlist; 
    ArrayList<Integer> numOfCorAnswers = new ArrayList<Integer>(),numOfTotalAnswers= new ArrayList<Integer>();
    ArrayList<String> codes = new ArrayList<String>();
    Double percentage,tempPer;
    ArrayList<Double> percentages = new ArrayList<Double>();
    Answer temp_answer;
    Question temp_question;
    Evaluated temp_eval;

    
    
    // ----------------- Evaluated list initialization --------------------------
    evals.put("2334",new Evaluated("2334","Monocholias","Ioannis"));
    evals.put("4231", new Evaluated("4231","Banos","Vasileios"));
    evals.put("5271",new Evaluated("5271","Tassopoulos","Dimitrios"));
    evals.put("7415",new Evaluated("7415","Ioannou","Georgios"));
   
    // ----------------- Multiple choice question list initialization --------------------------
    choices.add("1) x=1,y=8");choices.add("2) x=1,y=9");choices.add("3) x=0,y=3");choices.add("4) x=0,y=0");
    correctChoices.add(1);correctChoices.add(3);
    questions.put("1001",new MultipleChoice("1001","For what prices of x, y is verified the function y=5x+3?",choices,correctChoices));
    choices = new ArrayList<String>(); correctChoices = new ArrayList<Integer>();


    choices.add("1) 105");choices.add("2) 90+11");choices.add("3) 110-11");choices.add("4) 50+51");
    correctChoices.add(1);correctChoices.add(2);correctChoices.add(4);
    questions.put("1002",new MultipleChoice("1002","Which expression is greater than 100?",choices,correctChoices));
    choices = new ArrayList<String>(); correctChoices = new ArrayList<Integer>();
    
   
    choices.add("1) (5>0) AND (-1>0)");choices.add("2) (3>5) OR (8>7)");choices.add("3) (9>8) AND (3>2)");choices.add("4) NOT(10>0)");
    correctChoices.add(2);correctChoices.add(3);
    questions.put("1003",new MultipleChoice("1003","Which of the following expressions are evaluated as True?",choices,correctChoices));
    choices=new ArrayList<String>();
   
    // ----------------- One word question list initialization --------------------------
    questions.put("2001",new OneWord("2001","How a class must be declared so that it does not have descendants?","final"));
    questions.put("2002",new OneWord("2002","37+37= ","74"));
    questions.put("2003",new OneWord("2003","The variables that are visible only in the class in which they belong are called: ","private"));
    
    // ----------------- Gaps question list initialization --------------------------
    choices.add("10");choices.add("20");choices.add("10");
    correctOrder.add("10");correctOrder.add("10");correctOrder.add("20");
    questions.put("3001",new Gaps("3001","The sum of the numbers ? and ? is ?.",choices,correctOrder));
    choices=new ArrayList<String>();correctOrder=new ArrayList<String>();
   
    choices.add("descendant");choices.add("ancestor");
    correctOrder.add("descendant");correctOrder.add("ancestor");
    questions.put("3002",new Gaps("3002","If a class X is ? of  class Y, then the class Y is ? of class X.",choices,correctOrder));
    choices=new ArrayList<String>();correctOrder=new ArrayList<String>();

    choices.add("6");choices.add("11");choices.add("70");
    correctOrder.add("70");correctOrder.add("6");correctOrder.add("11");
    questions.put("3003", new Gaps("3003", "a) 58 + 12 = ?\tb) 30 * ? = 180 \tc) 55/5 = ?", choices, correctOrder));
    choices=new ArrayList<String>();correctOrder=new ArrayList<String>();


    //--------------------------------files reading----------------------------------------
    ReadFiles.parseEvaluatedList("RATEDPERSON_LIST.txt");//Evaluated's file
    /*for(Evaluated e : ReadFiles.evals.values())
        System.out.println(e);*/
    
    ReadFiles.parseQuestionList("QUESTION_LIST.txt");//Questions' file
    /*for(Question e : ReadFiles.questions.values())
        System.out.println(e);*/
    
    ReadFiles.parseAnswerList("ANSWER_LIST.txt");//Answers' file
    /*for(Answer a : ReadFiles.answers)
        System.out.println(a);*/ 


   
    for(;;){
        System.out.println("-----------------------------------------------"); 
        System.out.println("1. Add Evaluated");
        System.out.println("2. Add Question");
        System.out.println("3. Add Answer");
        System.out.println("4. Display Questions");
        System.out.println("5. Display all Answers");
        System.out.println("6. Correct Answers per evaluated");
        System.out.println("7. Percentage of correct answers per question");
        System.out.println("8. Percentage of correct answers per evaluated");
        System.out.println("0.Exit");
        System.out.println("----------------------------------------------");
        System.out.print("> ");
        operation = in.nextLine();
      
        // ----------------- Add Evaluated --------------------------
        if (operation.equals("1")){
            if (!evals.isEmpty())
					for (Evaluated e : evals.values()) 
						System.out.println (e);
			System.out.println("-------------------------------");
            System.out.print("Please insert evaluated's code: ");
            code1 = in.nextLine();//evaluated's code
            if (evals.containsKey(code1))
                System.out.println("The evaluated is already in the list.");
            else{
                System.out.print("Name: ");
                name = in.nextLine();
                System.out.print("Surname: ");
                surname = in.nextLine();
                temp_eval = new Evaluated(code1,surname,name);
                evals.put(code1,temp_eval);
                ReadFiles.evals.put(code1,temp_eval);
            }   
        }//Add Evaluated
        
        // ----------------- Add Question --------------------------
        else if (operation.equals("2")){
            if(!questions.isEmpty())
                    for(Question q : questions.values())
                        System.out.println(q);
            System.out.println("-------------------------------");
            System.out.print("Please insert question's code: ");
            code2 = in.nextLine();
            if (questions.containsKey(code2))//Not to have a duplicate of the same question
                System.out.println("The question is already in the list.");
            else{
                System.out.println("Insert one of the following types of question:");
                System.out.println("Multiple Choice\nOne Word\nGaps");
                System.out.print("\nType: ");
                type = in.nextLine();
                if (!(type.equalsIgnoreCase("One Word") || type.equalsIgnoreCase("Multiple choice") || type.equalsIgnoreCase("Gaps"))){
                    System.out.println("\nInvalid type of question");
                    System.out.println("Accepted types:");
                    System.out.println("Multiple Choice\nOne Word\nGaps");
                    continue;
                }//Type's validity check
                System.out.print("Insert question's description: ");
                description = in.nextLine();
                if (type.equalsIgnoreCase("Multiple choice")){
                    int x = 0;
                    for(;;){
                        System.out.println("Add more choices(Yes/No)?");
                        choice1 = in.nextLine();
                        while (!(choice1.equalsIgnoreCase("Yes") || choice1.equalsIgnoreCase("No"))){
                            System.out.println("Invalid answer, please type 'Yes or 'No'.");
                            System.out.println("Add more correct chooices(Yes/No)?");
                            choice1 = in.nextLine();
                        }//validity check
                        if (choice1.equalsIgnoreCase("Yes")){
                            x++;
                            System.out.println("Insert choice: ");
                            choice2 = in.nextLine();
                            choices.add(x +") "+choice2);}
                        else if (choice1.equalsIgnoreCase("No")){
                            break;
                        }
                    }//end for
                    
                    for(int i=0;i<choices.size();i++){//Not to exceed the size of the available choices
                        System.out.println("Add more correct chooices(Yes/No)?");
                        choice1 = in.nextLine();
                        while (!(choice1.equalsIgnoreCase("Yes") || choice1.equalsIgnoreCase("No"))){
                            System.out.println("Invalid answer, please type 'Yes or 'No'.");
                            System.out.println("Add more correct chooices(Yes/No)?");
                            choice1 = in.nextLine();
                        }//validity check
                        if (choice1.equalsIgnoreCase("Yes")){
                            System.out.println("Insert number: ");
                            choice3 = in.nextInt();
                            in.nextLine();
                            correctChoices.add(choice3);
                        }
                        else if (choice1.equalsIgnoreCase("No"))
                            break;   
                    }//end for
                    temp_question = new MultipleChoice(code2, description, choices, correctChoices);
                    questions.put(code2,temp_question);
                    ReadFiles.questions.put(code2,temp_question);
                    choices=new ArrayList<String>();correctChoices=new ArrayList<Integer>();      
                }//Multiple choice
                
                else if  (type.equalsIgnoreCase("One word")){
                    System.out.print("Please insert the correct answer(a single word): ");
                    correctAnswer = in.nextLine();
                    temp_question = new OneWord(code2,description,correctAnswer);
                    questions.put(code2,temp_question);
                    ReadFiles.questions.put(code2,temp_question);
                }//One word
                
                else if  (type.equalsIgnoreCase("Gaps")){
                    for(;;){
                        System.out.println("Add more words(Yes/No)?");
                        choice1 = in.nextLine();
                        while (!(choice1.equalsIgnoreCase("Yes") || choice1.equalsIgnoreCase("No"))){
                            System.out.println("Invalid answer, please type 'Yes or 'No'.");
                            System.out.println("Add more correct chooices(Yes/No)?");
                            choice1 = in.nextLine();
                        }//validity check
                        if (choice1.equalsIgnoreCase("Yes")){
                            System.out.print("Insert word: ");
                            word = in.nextLine();
                            choices.add(word);}
                        else if (choice1.equalsIgnoreCase("No")){
                            break;
                        }
                    }//end for
                    
                    for(int i=0;i<choices.size();i++){
                        System.out.print("Give the correct word that fills the gap "+ (i+1) + " : ");
                        word = in.nextLine();
                        while (!choices.contains(word)) {
                            System.out.print("Invalid word,give the correct word that fills the gap "+ (i+1) + " : ");
                            word = in.nextLine();
                        }  
                        correctOrder.add(word);
                    }//end for
                    temp_question = new Gaps(code2, description, choices, correctOrder); 
                    questions.put(code2,temp_question);
                    ReadFiles.questions.put(code2,temp_question);
                    choices = new ArrayList<String>(); correctOrder = new ArrayList<String>();
                }//Add question of type Gaps
            }//New question to be added
        }//Add Question

        // ----------------- Add Answer --------------------------
        else if (operation.equals("3")){
            System.out.print("Please insert the evaluated's code: ");
            code1 = in.nextLine();
            if (evals.containsKey(code1)){
                System.out.print("Question's code: ");
                code2 = in.nextLine();
                if (!questions.keySet().contains(code2))
                    System.out.println("This question does not exist.");
                else{
                    for (Answer a: answers){
                        if (((a.getEvaluatedCode().equals(code1)) && (a.getQuestionCode().equals(code2)))){
                            duplicate = true;
                            break;}
                        else{
                            duplicate = false;}
                    }
                    if (!duplicate){
                        quest = questions.get(code2);
                        if (quest instanceof Gaps){
                            System.out.println((Gaps)quest);
                            for(int i=0;i < ((Gaps)quest).getUnorderedWords().size();i++){
                                System.out.print("Your answer of the  gap " + (i+1) + " is: ");
                                currentAnswer = in.nextLine();
                                while (!((Gaps)quest).getOrderedWords().contains(currentAnswer)){
                                    System.out.print("The given word is not included in the answer list of this question.\nPlease select one of the givewords.\nYour answer of the  gap " + (i+1) + " is: ");
                                    currentAnswer = in.nextLine();
                                }
                                choices.add(currentAnswer);
                            }//end for
                            temp_answer = new AnswerGaps(evals.get(code1), questions.get(code2), choices);
                            answers.add(temp_answer);
                            ReadFiles.answers.add(temp_answer);
                            choices = new ArrayList<String>();
                        }// Gaps answer
                        else if (quest instanceof OneWord){
                            System.out.println(quest);
                            System.out.print("Type the answer(a single word): ");
                            currentAnswer = in.nextLine();
                            temp_answer = new AnswerOneWord(evals.get(code1), questions.get(code2),currentAnswer);
                            answers.add(temp_answer);
                            ReadFiles.answers.add(temp_answer);
                        }// One word answer
                        else if (quest instanceof MultipleChoice){
                            System.out.println(quest);
                            for (int i=0;i<((MultipleChoice)quest).getAltAnswers().size();i++){
                                System.out.println("Add more choices?(Yes/No)");
                                choice1 = in.nextLine();
                                if (choice1.equalsIgnoreCase("No"))
                                    break;
                                else if (choice1.equalsIgnoreCase("Yes")){
                                    System.out.println("Choose a number (" + 1 +"-"+((MultipleChoice)quest).getAltAnswers().size() +")"); 
                                    choice3 = in.nextInt();
                                    in.nextLine();
                                    while (choice3 < 1 || choice3 >((MultipleChoice)quest).getAltAnswers().size()){
                                        System.out.println("Invalid number.Please,choose a number (" + 1 +"-"+((MultipleChoice)quest).getAltAnswers().size() +")"); 
                                        choice3 = in.nextInt();
                                        in.nextLine();
                                    }
                                    while(evaluatedChoices.contains(choice3)){
                                        System.out.print("You have already selected this number.\nChoose one that you have not selected before: ");
                                        choice3 = in.nextInt();
                                        in.nextLine();
                                    }
                                    evaluatedChoices.add(choice3);}
                                else System.out.println("Invalid Answer,Please retry.");         
                            }
                            temp_answer =  new AnswerMul(evals.get(code1), questions.get(code2),evaluatedChoices);
                            answers.add(temp_answer);
                            ReadFiles.answers.add(temp_answer);
                            evaluatedChoices = new ArrayList<Integer>();        
                        }//Multiple choice answer
                    }
                    else{
                        System.out.println("The evaluated has already answered this question.");
                    }
                }
            }
            else System.out.println("The evaluated is not is in the list.");    
        }//Add Answer 

        // ----------------- Display Questions -----------------
        else if(operation.equals("4")){

            for(Question q : questions.values()){
                if (q instanceof MultipleChoice){
                    System.out.println("--------------------------------------------------------------------");
                    System.out.println(q);}
            }
            for(Question q: questions.values()){
                if (q instanceof OneWord){
                    System.out.println("--------------------------------------------------------------------");
                    System.out.println(q);}
            }
            for(Question q: questions.values()){
                if (q instanceof Gaps){
                    System.out.println("--------------------------------------------------------------------");
                    System.out.println(q);}
            }
            
        }//Display Questions

        //-------------------Display all Answers------------------
        else if(operation.equals("5")){
            if(!evals.isEmpty()){
                for(Evaluated e : evals.values()){
                    System.out.println(e);
                }
                System.out.println("----------------------");
                System.out.print("Please insert evaluated's code: ");
                code2 = in.nextLine();
                if (!evals.containsKey(code2)){
                    System.out.println("\nThere is no evaluated with this code in the list.");
                    continue;
                }//No evaluated with the given code case
                System.out.println(evals.get(code2));
                total_answers = 0;
                for(Answer a : answers){
                    if(a.getEvaluatedCode().equals(code2)){
                        System.out.println(a);
                        total_answers++;
                    }
                }
                if (total_answers == 0)
                    System.out.println("This evaluated has not answered any question yet.");
            }
            else{
                System.out.println("\nThe list of the evaluated ones is empty.");
            }
        }//Display all Answers
       
        //---------------------Correct Answers or percentage of correct answers per evaluated-------------------------
        else if(operation.equals("6") || operation.equals("8")){
            numOfCorAnswers.clear();codes.clear();numOfTotalAnswers.clear();percentages.clear();//Initialization
            if (answers.isEmpty()){
                System.out.println("There are no answers.");
                continue;
            }
            for (String code:evals.keySet()){
                total_answers = 0;
                corAnswers = 0;
                for (Answer a : answers){
                    if (a.getEvaluatedCode().equals(code)){
                        total_answers++;
                        quest = questions.get(a.getQuestionCode());
                        if (a instanceof AnswerMul){
                            correctlist = true;
                            if(((AnswerMul)a).getEvaluatedAnswer1().size() == ((MultipleChoice)quest).getcorrectAnswers().size()){
                                for (int i:((MultipleChoice)quest).getcorrectAnswers()){
                                    if (!((AnswerMul)a).getEvaluatedAnswer1().contains(i)){
                                        correctlist = false;
                                        break;}
                                }
                            }
                            else{
                                correctlist = false;
                            }
                            if (correctlist)
                                corAnswers++;
                        }//Multiple choice Answer
                        else if (a instanceof AnswerGaps){
                            correctlist = true;
                            for (int i=0;i<((Gaps)quest).getOrderedWords().size();i++){
                                if (!((Gaps)quest).getOrderedWords().get(i).equalsIgnoreCase(((AnswerGaps)a).getEvaluatedAnswers2().get(i))){
                                    correctlist = false;
                                    break;}
                            }
                            if (correctlist)
                                corAnswers++;
                        }//Gaps Answer
                        else{
                            if(((AnswerOneWord)a).getevaluatedAnswer().equalsIgnoreCase(((OneWord)quest).getCorrectAnswer()))
                                corAnswers++;  
                        }
                        
                    }
                }
                numOfCorAnswers.add(corAnswers); 
                ReadFiles.numOfCorAnswers.add(corAnswers);
                codes.add(code);
                numOfTotalAnswers.add(total_answers);
                ReadFiles.numOfTotalAnswers.add(total_answers);
                percentage =  ((total_answers > 0) ? (double)corAnswers/total_answers * 100:0);
                percentages.add(percentage);
             }
             if (operation.equals("6")){
                for(int i=0;i<numOfCorAnswers.size()-1;i++){
                    imax = i;
                    for(int j=i+1;j<numOfCorAnswers.size();j++){
                        if (numOfCorAnswers.get(j) > numOfCorAnswers.get(imax)){
                            imax = j;
                        }
                    }
                    temp = numOfCorAnswers.get(i);
                    numOfCorAnswers.set(i, numOfCorAnswers.get(imax));
                    numOfCorAnswers.set(imax,temp);
                    tempcode = codes.get(i);
                    codes.set(i,codes.get(imax));
                    codes.set(imax,tempcode);
                    tempTotal = numOfTotalAnswers.get(i);
                    numOfTotalAnswers.set(i,numOfTotalAnswers.get(imax));
                    numOfTotalAnswers.set(imax,tempTotal);
                }//selection sort of correct answers per evaluated
            
                for (int i = 0;i<numOfCorAnswers.size();i++){
                    System.out.println("------------------------------------");
                    System.out.println(evals.get(codes.get(i)));
                    System.out.println("\nNumber of  evaluated's total answers: " + numOfTotalAnswers.get(i));
                    System.out.println("Number of correct answers: "+ numOfCorAnswers.get(i));
                }//results display
             }
             else if(operation.equals("8")){
                for(int i = 0;i<percentages.size();i++){
                    imax = i;
                    for(int j=i+1;j<percentages.size();j++){
                        if (percentages.get(j) > percentages.get(imax)){
                            imax = j;
                        } 
                    }
                    tempPer = percentages.get(i);
                    percentages.set(i,percentages.get(imax));
                    percentages.set(imax,tempPer);
                    tempcode = codes.get(i);
                    codes.set(i,codes.get(imax));
                    codes.set(imax,tempcode);
                    temp = numOfCorAnswers.get(i);
                    numOfCorAnswers.set(i, numOfCorAnswers.get(imax));
                    numOfCorAnswers.set(imax,temp);
                    tempTotal = numOfTotalAnswers.get(i);
                    numOfTotalAnswers.set(i,numOfTotalAnswers.get(imax));
                    numOfTotalAnswers.set(imax,tempTotal);
                    }//selection sort of percentages of correct answers per evaluated
                for(int i = 0;i<percentages.size();i++){
                    System.out.println("-------------------------------------------------------------");
                    System.out.println(evals.get(codes.get(i)));
                    System.out.println("\nNumber of  evaluated's total answers: " + numOfTotalAnswers.get(i));
                    System.out.println("Number of correct answers: "+ numOfCorAnswers.get(i));
                    System.out.println("The percentage of correct answers of the evaluated is: "+ percentages.get(i) + "%"); 
               } 
            }//results display
             
        }//Correct Answers or percentage of correct answers per evaluated
        
        //---------------------- Percentage of correct answers per question-----------------------------------
        else if(operation.equals("7")){
            codes.clear();percentages.clear();
            if (answers.isEmpty()){
                System.out.println("There are no answers.");
                continue;
            }
            for(Question q:questions.values()){
                total_answers = 0;
                corAnswers = 0;
                for(Answer a: answers){
                    if (a.getQuestionCode().equals(q.code)){
                        total_answers++;
                        if(q instanceof MultipleChoice){
                            correctlist = true;
                            if(((AnswerMul)a).getEvaluatedAnswer1().size() == ((MultipleChoice)q).getcorrectAnswers().size()){
                                for (int i:((MultipleChoice)q).getcorrectAnswers()){
                                    if (!((AnswerMul)a).getEvaluatedAnswer1().contains(i)){
                                        correctlist = false;
                                        break;}
                                }

                            }
                            else{
                                correctlist = false;
                            }
                            if (correctlist)
                                corAnswers++;
                        }
                        else if ( q instanceof Gaps){
                            correctlist = true;
                            for (int i=0;i<((Gaps)q).getOrderedWords().size();i++){
                                if (!((Gaps)q).getOrderedWords().get(i).equalsIgnoreCase(((AnswerGaps)a).getEvaluatedAnswers2().get(i))){
                                    correctlist = false;
                                    break;}
                            }
                            if (correctlist)
                                corAnswers++;
                        }
                        else{
                            if(((AnswerOneWord)a).getevaluatedAnswer().equalsIgnoreCase(((OneWord)q).getCorrectAnswer()))
                                corAnswers++;  
                        }
                    }   

                }
                percentage =  ((total_answers > 0) ? (double)corAnswers/total_answers * 100:0);
                percentages.add(percentage);
                codes.add(q.code);
                 
            
             }
             for(int i=0;i<percentages.size()-1;i++){
                imax = i;
                for(int j=i+1;j<percentages.size();j++){
                    if (percentages.get(j) > percentages.get(imax)){
                        imax = j;
                    }
                }
                tempPer = percentages.get(i);
                percentages.set(i, percentages.get(imax));
                percentages.set(imax,tempPer);
                tempcode = codes.get(i);
                codes.set(i,codes.get(imax));
                codes.set(imax,tempcode);
                
            }//selection sort of percentages of correct answers per question
            for (int i = 0;i<percentages.size();i++){
                System.out.println("--------------------------------------------------------------");
                System.out.println(questions.get(codes.get(i)));
                System.out.println("The percentage of correct answers of this question is:  "+ percentages.get(i)+"%");

            }//results display 
        }
        else if(operation.equals("0")){
            break;
        }
        else{
            System.out.println("Invalid choice.Please select an integer number from 0 to 8.");
        }
    }//Main menu for loop
    
    
    //--------------------------------files writing----------------------------------------
    WriteFiles.CreateQuestionfile("Question_list2.txt");//Questions' file
    WriteFiles.CreateAnswerfile("Answer_list2.txt");//Answers' file 
    WriteFiles.CreateEvaluatedFile("Ratedperson_list2.txt");
}

}//class Main


