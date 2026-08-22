class App5 {
	static int Fib(int n){
		if (n <= 2){
			return 1;
		}
		else{
			return Fib(n-1) + Fib(n-2);
		}
	}
	
	public static void main(String args[]){
		int number = Integer.parseInt(args[0]);
		int term = 2;
		while (number >= Fib(term)){
			System.out.println("Fibonacci number = " + Fib(term));
			term++;
			
		}
		if (number == Fib(term-1)){
			System.out.println(number + " is a fibonacci number");}
		else{
			System.out.println(number + " is not a fibonacci number");
		}
	}
}

