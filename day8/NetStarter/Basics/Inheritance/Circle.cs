using System.Net.NetworkInformation;
using System;
using Inheritance;
class Circle:I2DShape 
{
    public Circle(double r)
    {
        radius = r;
    }

     protected double radius;
     
    public virtual double GetArea() => Math.PI * radius * radius;  // virtual==overridable
     public virtual double GetPerimeter() => 2* Math.PI * radius;
}