//// Record accessor syntax "record.field_label" can be used to get contained values from a custom type record.
//// The accessor syntax can always be used for fields with the same name that are in the same position and have the same type
//// for all variants of the custom type, while other fields can only be accessed when the compiler can tell which variant the value is,
//// such as after pattern matching in a case expression.
//// In the example below:
//// - The "name" field is in the first position and has type String for all variants, so it can be accessed.
//// - The "subject" field is absent on the student variant, so it cannot be used on all values of type SchoolPerson. If you uncomment the
////   "student.subject" line, you'll get a compile error.
//// 
//// The record update syntax syntax can be used to create a new record from an existing one of the same type, but with some fields changed.
//// Gleam is an immutable language, so using the record update syntax does not mutate or otherwise change the original record.

// import gleam/io

pub type SchoolPerson {
  Teacher(name: String, subject: String)
  Student(name: String)
  Admin(name: String, department: String, floor: Int, room: Int)
}

pub fn main() {
  // io.println("Hello from record_access_and_update!")

  let teacher: SchoolPerson = Teacher("Mr. Schofield", "Physics")
  let student: SchoolPerson = Student("Koushiar")

  echo teacher.name
  echo student.name

  echo teacher.subject
  // echo student.subject

  let super_intendent: SchoolPerson = Admin("Dr. Rella", "Executive", 1, 107)
  let new_super_intendent: SchoolPerson =
    Admin(..super_intendent, name: "Dr. Quinn")

  echo super_intendent
  echo new_super_intendent
}
