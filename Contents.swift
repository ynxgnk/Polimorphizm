import UIKit
/*
 Полиморфизм - способность классов-наследников переопределять методы, свойства и иниционализаторы классов-родителей.
 
 Если нет наследования, нет и полиморфизма.
 
 Используя полиморфизм можно переопределять только вычисляемые свойства (1). Пример (2).
 
 Можно переопределять все методы и инициализаторы, нельзя только хранимые свойстава. Пример (3).
 
 Перегрузка - Пример (4).
 
 Тип того что переопределяем должен оставаться постоянным. Разница - (3) и (4).
 
 */

class Teacher {
     
    let name: String
    var description: String { /* (1) */
        return "Hi, my name is \(name). Im a teacher."
    }
    
    init(name: String) {
        self.name = name
    }
    
    func teach() {
        print("I teach people now")
    }
}

class IOSTeacher: Teacher {
     
    let speciality: String
    
    override var description: String {  /* (2) */
        return "Hi Im \(name) and im a teacher of IOS, my speciality is \(speciality)"
    }
    
    init(name: String, speciality: String) {
        self.speciality = speciality
        super.init(name: name)
    }
    
    override init(name: String) {
        self.speciality = "FrontEnd"
        super.init(name: name)
    }
    
    func swiftCoding() {
        print("I programm in Swift!")
    }
    
    override func teach() { /* (3) */
        print("I teach IOSDEV tight now")
    }
    
    func teach(hours: Int) { /* (4) */
        print("I teach people \(hours) hrs.")
    }
    
}

let teacher = Teacher(name: "Danka")
teacher.name
teacher.description
teacher.teach()

let iosTeacher = IOSTeacher(name: "Nazar", speciality: "Front")
iosTeacher.speciality
iosTeacher.name
iosTeacher.teach()
iosTeacher.swiftCoding()
iosTeacher.description

let iosTeacher2 = IOSTeacher(name: "Savok")
iosTeacher2.speciality
iosTeacher2.description
iosTeacher.teach()
iosTeacher.teach(hours: 5)


