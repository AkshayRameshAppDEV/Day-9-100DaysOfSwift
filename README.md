# Day-9-100DaysOfSwift
Day 9 of 100 Days of Swift.

# Day 9

## Learnt the following:

## Structs, Properties and methods - PART 2:

### 1. Initializers
  - Can override the default free initializer, but all properties must be initialized
  - init()
  
### 2. Self
  - Current Instance of property

### 3. Lazy Properties
  - Add `lazy` keyword in front of the property
  - By adding lazy, the struct property will be created only when it is accessed - hence lazy instantiation
  
### 4. Static properties and methods
  - When the method or properties that are marked static, then these are called directly as a struct name with dot operator and dont need to create instance

### 5. Access Control Properties
  - protect the properties inside the struct by marking it as private
  - the private properties can be accessed only within structs not outside when creating instances
  - public keyword is also there
