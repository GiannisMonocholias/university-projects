class CustomerList {
	
	private Customer [] myList = new Customer[50];
	
	private int length = 0;
	
		
	void InsertCustomer(Customer newCustomer){
		if (length <= 49){
		myList[length] = newCustomer;
		length++;}
		
	}//InsertCustomer
	
	
	void LookupCustomer(String RN) {
		boolean found = false;
		for(int i=0;i<length;i++){
			if (myList[i].getCode().equals(RN)){
				System.out.println("Name: "+myList[i].getName() +" Code: "+myList[i].getCode()+" Date: "+ myList[i].getDate());
				found = true;
				break;
			}
		}
		if (found == false){
			System.out.println("Customer "+ RN + " not found in list");}
		
		
	}//LookupCustomer
	
	
	void DisplayList() {
		for(int i=0;i<length;i++){
				System.out.println(myList[i]);
		}
			
	}//DisplayList
	
}//CustomerList	