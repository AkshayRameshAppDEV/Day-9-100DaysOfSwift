
// Day 9 - Structs part 2

// Initializers
// Can override the default free initializer, but all properties must be initialized
// init()
struct Player {
    var name: String
    
    init() {
        name = "Sachin"
        print("God of cricket created.")
    }
}

var kohli = Player()
kohli.name
kohli.name = "Virat Kohli"
kohli.name

// Current Instance of property - self
struct Human {
    var name: String

    init(birthName: String) {
        self.name = birthName
    }
}

var human = Human(birthName: "Akshay")
human.name

// lazy properties
// Add `lazy` keyword in front of the property
// By adding lazy, the struct property will be created only when it is accessed - hence lazy instantiation
struct Animal {
    init() {
        print("Creating Animal with 4 legs")
    }
}

struct Dog {
    var name: String
    lazy var animal = Animal()
    
    init(nameOfDog: String) {
        self.name = nameOfDog
    }
}
var raju = Dog(nameOfDog: "Raju")
raju.animal

// Static properties and Methods
// When the method or properties that are marked static, then these are called directly as a struct name with dot operator and dont need to create instance
struct Struct {
    static var count = 0
    var name: String
    
    init() {
        self.name = "Akshay"
        Struct.count += 1
        
    }
    static func staticMethod() {
        print("I am a static method and the count is \(Struct.count)")
    }
}

Struct.staticMethod()
let s = Struct()
Struct.staticMethod()

// Access control properties
// protect the properties inside the struct by marking it as private
// the private properties can be accessed only within structs not outside when creating instances
// public keyword is also there

struct PrivateStruct {
    private var x: String
    
    init(ssn: String) {
        self.x = ssn
    }
    
    func whatsMySSN() {
        print("SSN: \(self.x)")
    }
}

let ssn = PrivateStruct(ssn: "XX-XXX-XXXXX")
ssn.whatsMySSN()
