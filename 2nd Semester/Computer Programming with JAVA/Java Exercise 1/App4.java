import java.util.Scanner;

class App4 {
	
	public static void main(String args[]){
		Scanner in = new Scanner(System.in);
		System.out.print("Enter the first number: ");
		double a = in.nextDouble();
		
		System.out.print("Enter the second number: ");
		double b= in.nextDouble();
		
		System.out.print("Enter the third number: ");
		double c = in.nextDouble();
		
		double D = b*b - 4*a*c;
		if (D < 0){
			System.out.println("There are no real values for the quadratic equation.");
		}
		else if (D == 0){
			double solution = -b/(2*a);
			System.out.printf("The solution is : %.3f",solution);}
		else{
			double solution_1 = (-b + Math.sqrt(D))/(2*a);
			double solution_2 = (-b - Math.sqrt(D))/(2*a);
			System.out.printf("The first solution is : %.3f%nThe second solution is: %.3f%n",solution_1,solution_2);
		}
	}
		
}


