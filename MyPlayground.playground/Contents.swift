//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Student{
    var age:Int
    var name:String
    var studentNumber:Int
    var studyType:StudyType
    
    init(age:Int,name:String,studentNumber:Int,studyType:StudyType)
    {
        self.age = age
        self.name = name
        self.studentNumber = studentNumber
        self.studyType = studyType
    }
}

class StudentGroup
{
    var students:[Student]
    var groupName:String
    
    init(groupName:String){
        students = []
        self.groupName = groupName
    }
    
    func getAmountOfStudents()->Int{
        //get the number of students in the list
        return students.count
    }
    
    func addStudent(studentToAdd:Student)
    {
        students.append(studentToAdd)
    }
    
    func removeStudent(studentToRemove:Student)
    {
        //removes student from list and then updates the list
        students = students.filter(){$0 !== studentToRemove}
    }
    
    func getStudentsFromFunction(type:StudyType)->[Student]
    {
        var studentTempList:[Student] = []
        
        //loop through the list of students and create a new list that contains all students with a specific studytype
        for student in students {
            if(student.studyType == type)
            {
                studentTempList.append(student)
            }
        }
        
        return studentTempList
    }
}

enum StudyType
{
    case Nothing
    case Software
    case Media
    case Technologie
    case Bussiness
}

//---------------------------start of program---------------------------//
var student1 = Student(age: 20, name: "Luc", studentNumber: 100001, studyType: StudyType.Bussiness)
var student2 = Student(age: 20, name: "Harry", studentNumber: 100001, studyType: StudyType.Media)
var student3 = Student(age: 20, name: "Willem", studentNumber: 100001, studyType: StudyType.Software)
var student4 = Student(age: 20, name: "Henk", studentNumber: 100001, studyType: StudyType.Technologie)
var student5 = Student(age: 20, name: "Kees", studentNumber: 100001, studyType: StudyType.Bussiness)
var student6 = Student(age: 20, name: "Piet", studentNumber: 100001, studyType: StudyType.Media)
var student7 = Student(age: 20, name: "Henk", studentNumber: 100001, studyType: StudyType.Technologie)
var student8 = Student(age: 20, name: "Gast", studentNumber: 100001, studyType: StudyType.Software)

var studentGroup = StudentGroup(groupName: "group of students")

studentGroup.addStudent(studentToAdd: student1)
studentGroup.addStudent(studentToAdd: student2)
studentGroup.addStudent(studentToAdd: student3)
studentGroup.addStudent(studentToAdd: student4)
studentGroup.addStudent(studentToAdd: student5)
studentGroup.addStudent(studentToAdd: student6)
studentGroup.addStudent(studentToAdd: student7)
studentGroup.addStudent(studentToAdd: student8)

var studentsWithSoftware:[Student] = studentGroup.getStudentsFromFunction(type: StudyType.Software)

studentGroup.removeStudent(studentToRemove: student1)
