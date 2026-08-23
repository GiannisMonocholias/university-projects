import java.io.*;
import java.util.StringTokenizer;

class NetProfit{
    public static void main(String Args[]){

        if (Args.length != 1) {
            System.out.println("Error: Missing file path. Please provide the file path as an argument.");
            System.out.println("Example: java NetProfit trades.txt");
            return;
        }   

        try{

            DoubleQueueImpl myQueue = new DoubleQueueImpl();//Queue to be used initialization
            BufferedReader reader = new BufferedReader(new FileReader(Args[0]));//BufferedReader initialiaztion
            String line = reader.readLine();//The first line of the file
            double netProfit = 0;//Net Profit's variable initialization
            double pricebuy;//Variable to store the price at which a number of shares were bought
            double sellprice;//Variable to store the price at which a number of shares were sold
            int quantity;//Represents the number of shares that were bought or sold
            double price;
            String token = "";

            while(line != null){//While there are more lines to be read

                StringTokenizer tokenizer = new StringTokenizer(line," ");//Break the line into tokens
                token = line.trim().isEmpty() ? "":tokenizer.nextToken();//If a line is empty
                
                if(token.equalsIgnoreCase("buy")){
                    quantity = Integer.parseInt(tokenizer.nextToken());
                    tokenizer.nextToken();
                    price =  Double.parseDouble(tokenizer.nextToken());

                    //We put the price at which the shares were bought in the queue as many times as the number of shares is
                    for(int i = 0; i < quantity; i++){ 
                        myQueue.put(price);
                    }

                }
                else if(token.equalsIgnoreCase("sell")){
                    quantity = Integer.parseInt(tokenizer.nextToken());
                    tokenizer.nextToken();
                    sellprice = Double.parseDouble(tokenizer.nextToken());

                    if(myQueue.size() < quantity){//If there is no adequate quantity of shares to be sold
                        System.out.println("--------------------------------------------------");
                        System.out.println("Error: Not enough shares to sell.");
                        System.out.println("Shares availble to be sold: " + myQueue.size());
                        System.out.println("Shares requested to be sold: " + quantity +"(>" + myQueue.size() + ")");
                        System.out.println("--------------------------------------------------");
                    }
                    else{
                        for(int i = 0; i < quantity; i++){//Each unique share's net profit is added to the total net profit
                            pricebuy = myQueue.get();
                            netProfit += sellprice - pricebuy;
                        }                    
                    }
                }

                line = reader.readLine();//Read the next line
                

            }
            reader.close(); 
            if(netProfit < 0){//Distinction whether there was profit or loss so that an appropriate message is displayed 
                System.out.printf("Loss of: %.2f euros\n ", netProfit);

            }else{
                System.out.printf("Net Profit: %.2f euros\n ", netProfit);
            }
        }
        catch(IOException e){
            System.out.println("Error: Problem reading the file");
        }
    }
}