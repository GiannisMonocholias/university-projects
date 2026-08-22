class myDate {
	private int year;
	private int month;
	private int day;
	myDate(int year,int month,int day){
		this.year=year;
		this.month=month;
		this.day=day;
	}
	public int getDay() {
		return day;
	}
	public int getMonth() {
		return month;
	}
	public int getYear() {
		return year;
	}

	public String toString(){
		return String.format("%d/%d/%d",this.getDay(),this.getMonth(),this.getYear());
	}
}