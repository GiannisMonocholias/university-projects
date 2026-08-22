class Shape {
	
	private String color;
	
	Shape (String color) {
		this.color = color;
	}
	
	public String toString () {
		return "Color " + color;
	}
}

class Rectangle extends Shape {
	double length;
	double width;
	
	Rectangle(String color,double length,double width){
		super(color);
		this.length = length;
		this.width = width;
	}
	public double area(){
		return length * width;
	}
	public String toString () {
		return super.toString() + " length " + this.length + " width " + this.width; 
	}
}

class Triangle extends Shape {
	double width;
	double height;
	Triangle(String color,double width,double height){
		super(color);
		this.width = width;
		this.height = height;
	}
	public double area(){
		return 0.5 * height * width;
	}
	public String toString () {
		return super.toString() + " base " + this.width + " height " + this.height; 
	}
	

}

class App3 {
	
    public static void main(String[] args) {
		Rectangle r1 = new Rectangle("RED", 2.0, 3.0);
		Triangle t1 = new Triangle ("YELLOW", 2.0, 3.0);
		System.out.println ("Rectangle: " + r1);
		System.out.println ("Area of Rectangle: " + r1.area());
		System.out.println ("Triangle: " + t1);
		System.out.println ("Area of Triangle: " + t1.area());
		
    }
}

