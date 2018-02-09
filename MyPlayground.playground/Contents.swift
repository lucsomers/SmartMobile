//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



class Student{
    var age:Int
    var name:String
    var studentNumber:Int
    var counter:Int
    
    init()
    {
        age = 0
        name = "defaultname"
        studentNumber = 0
        counter = 0
    }
    
    func printNumbers(number:Int)
    {
        for x in 0...number{
            counter = x
        }
    }
}

var myStudent = Student()

var array = [myStudent]

myStudent.printNumbers(number:5)
var i = myStudent.counter

var myStudent2 = Student()
myStudent2.counter = 0

array.append(myStudent2)

array.remove(at: array.count - 1)
