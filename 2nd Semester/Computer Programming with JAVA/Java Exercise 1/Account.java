class Account {

   	private final double  interest = 1.5/100;
   	private double balance;
	String name;
   	String account_id;
	
	Account (String name,String account_id,double balance) {
		this.name = name;
		this.account_id = account_id;
		this.balance = balance;
		
   	}

   	double Deposit (double Amount){
		if (Amount <= 0){
			System.out.println("Error: Deposit Amount is invalid");
		}
		else{
			this.balance += Amount;
		}
		return this.balance;
   	}

	double Withdraw (double Amount) {
		if (Amount <= this.balance & Amount > 0){
			this.balance -= Amount;
		}
		else{
			if (Amount > this.balance){System.out.println("Error:Insufficient funds");}
			if (Amount <= 0){System.out.println("Error: Withdraw Amount is invalid");}
		}
		return this.balance;
   	}

	double getBalance (){
		return this.balance;
	}

   	double addInterest (){
		this.balance += this.balance * interest;
		return this.balance;
		
	}

   	public String toString(){
		String account_number = String.format("Account Number : %s%n",this.account_id); 
		String Name = String.format("Customer Name  : %s%n",this.name);
		String balance = String.format("Balance        : %,.2f%n",this.getBalance());
		return account_number + Name + balance;
		
		      	
   	}
}

