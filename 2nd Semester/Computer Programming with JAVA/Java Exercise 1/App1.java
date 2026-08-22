import java.util.Scanner;

class App1 {
		
    int Factorial(int n){
		if (n == 0){
			return 1;
		}
		else{
			return n * Factorial(n-1);
		}
	}
		
  	public static void main(String args[]){
		Scanner in = new Scanner(System.in);
		App1 obj = new App1();
		System.out.print("Give a non negative integer: ");
		int number = in.nextInt();
		while (number < 0){
			System.out.print("The given number is negative.\nPlease give a non negative integer: ");
			number = in.nextInt();
		}
		
		
		int fact = obj.Factorial(number);
		System.out.printf("%d! = %d%n",number,fact);
		
     	
   	}

}

