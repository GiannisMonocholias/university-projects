import java.util.Scanner;

class App3 {
	
	public static void main(String args[]){
		Scanner in = new Scanner(System.in);
		System.out.print("Give a number: ");
		int number = in.nextInt();
		int Items = 0;
		int sum = 0;
		int Max = 0; int Min = 0;
		int Positive = 0; int Negative = 0;
		double Average = 0.0;
		while (number != 0){
			if (number > Max){Max = number;} 
			if (number < Min){Min = number;}
			Items++;
			sum += number;
			if (number > 0){Positive++;}
			else if (number < 0){Negative++;}
			System.out.print("Give a number: ");
			number = in.nextInt();
		
		}
		if (Items > 0){Average = (double)sum/Items;}
		System.out.printf("%nItems   :%,8d",Items);
		System.out.printf("%nAverage :%,12.3f",Average);
		System.out.printf("%nNegative:%,8d",Negative);
		System.out.printf("%nPositive:%,8d",Positive);
		System.out.printf("%nMax     :%,8d",Max);
		System.out.printf("%nMin     :%,8d%n",Min);
	}

}

