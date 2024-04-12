//write console application to calculate area and perimeter of different 2D shapes.

class Rectangle
{
    // public Rectangle()  //default constructor
    // {

    // }
    public Rectangle(double l , double w) //parametrized constructor
    {
        length = l;
        width = w;
    }
    double length;
    double width;
    public double GetArea() =>  length * width;
        
    public double GetPerimeter() =>  2 *(length + width);
        
        
}