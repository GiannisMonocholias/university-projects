import java.util.Scanner;

class App6  {

	public static void main(String args[]) {
		Scanner in = new Scanner(System.in);
		System.out.println("Creating an account");
		System.out.print("Account Number : ");
		String id_num = in.nextLine();
		System.out.print("Customer Name  : ");
		String name = in.nextLine();
    	System.out.print("Initial balance : ");
		double initial_balance = in.nextDouble();
		
		
		Account Account1 = new Account (name,id_num,initial_balance);

    		
		for (;;){
			System.out.println ("\n---------------");
			System.out.println ("1. Deposit");
			System.out.println ("2. Withdraw");
			System.out.println ("3. Account Details");
			System.out.println ("4. Add Interest");
			System.out.println ("0. Exit");
			System.out.println ("---------------");
			System.out.print ("> ");
			int choice = in.nextInt();
			if (choice == 1){
				System.out.println("Deposit ...");
				System.out.print(Account1);
				System.out.print("Amount: ");
				double Amount = in.nextDouble();
				Account1.Deposit(Amount);
				System.out.println("New balance    : "+String.format("%,.2f",Account1.getBalance()));
			}
			else if (choice == 2) {
				System.out.println("Withdraw ...");
				System.out.print(Account1);
				System.out.print("Amount: ");
				double Amount = in.nextDouble();
				Account1.Withdraw(Amount);
				System.out.println("New balance    : "+String.format("%,.2f",Account1.getBalance()));

				
			}
			else if (choice == 3) {
				System.out.print(Account1);
				
			}
			else if (choice == 4) {
				System.out.println("Add Interest");
				System.out.print(Account1);
				Account1.addInterest();
				System.out.println("New balance    : "+String.format("%,.2f%n",Account1.getBalance()));
				
			}
			else if (choice == 0) break;
		}

   }

}