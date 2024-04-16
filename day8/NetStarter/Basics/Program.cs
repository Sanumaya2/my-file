// See https://aka.ms/new-console-template for more information
//top level statement
// Student s1 = new();
// Student s2 = new();
// Student s3 = new();
// Student s4 = new();
// Student s5 = new();
// Student s6 = new();

// s1.name = "karan";
// s1.address = "ktm";
// s1.roll = 23;
// s1.dob = new DateTime(1990,12,13);
// // Console.WriteLine(s1.name"  " + s1.address"  " + s1.roll"  " + s1.dob"  ");
// Console.WriteLine($"{s1.name}  {s1.address}  {s1.roll}  {s1.dob}");
// s1.PrintDetails();

// Animal a1 = new();
// Animal a2 = new();

// a1.name = "Dog";
// a1.color = "black";
// a1.age = 4;
// a1.weight = 45;
// a1.sound = "Bark";
// Console.WriteLine($"Name:{a1.name}  Color:{a1.color}  Age:{a1.age}  Weight:{a1.weight}   Sound:{a1.sound}");

// a2.name = "Cat";
// a2.color = "black and white";
// a2.age = 6;
// a2.weight = 20;
// a2.sound = "Meow";
// Console.WriteLine($"Name:{a2.name}  Color:{a2.color}  Age:{a2.age}  Weight:{a2.weight}  Sound:{a2.sound}");
using System;
using Inheritance;
var rec1 = new Rectangle( 5.6 , 3.4);
var p = rec1.GetPerimeter();

// var rec2 = new Rectangle( 5.6 , 3.4);
// var a = rec1.GetArea();

// Console.WriteLine("Rectangle 1 - Perimeter:" + p);
// Console.WriteLine("Rectangle 2 - Area:" + a);

// var square1 = new Square(23.5);
// var b = square1.GetArea();
// var h = square1.GetPerimeter();
// Console.WriteLine("Square 1 - Perimeter:" + h);
// Console.WriteLine("Square 2 - Area:" + b);

// var cir1 = new Circle(12.5);
// var c = cir1.GetArea();
// var d = cir1.GetPerimeter();
// Console.WriteLine("Circle 1- Perimeter:" + d);
// Console.WriteLine("Circle 2 - Area:" + c);

//  

 var fileio = new FileIO();
 fileio.CreateFile();

 fileio.CreateFileWithInFolder();



