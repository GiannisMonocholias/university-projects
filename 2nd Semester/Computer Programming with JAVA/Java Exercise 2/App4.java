import java.util.Scanner;

class App4 {

	public static void main (String args[]) {
		
		CustomerList list = new CustomerList();
		
		Scanner in = new Scanner(System.in);
		int choice;
		
		for (;;) {
			System.out.println ("1. Insert Customer");
			System.out.println ("2. Lookup Customer");
			System.out.println ("3. Display List");
			System.out.println ("0. Exit");
			choice = in.nextInt();
			if (choice == 1){
				System.out.println("Insert New Customer");
				System.out.print("Name: ");
				in.nextLine();
				String name = in.nextLine();
				System.out.print("Code: ");
				String code = in.nextLine();
				
				System.out.print("Day: ");
				int day = in.nextInt();
				
				System.out.print("Month: ");
				int month = in.nextInt();
				
				System.out.print("Year: ");
				int year = in.nextInt();
				Customer customer = new Customer(name,code,day,month,year);
				list.InsertCustomer(customer);
			}
			else if (choice == 2){
				System.out.print("Lookup Customer\nCode: ");
				in.nextLine();
				String code = in.nextLine();	
				list.LookupCustomer(code);
			}
			else if (choice == 3)
				list.DisplayList();
			else if (choice == 0) break;
			
		}// for
		
	} //main
	
}//App4
