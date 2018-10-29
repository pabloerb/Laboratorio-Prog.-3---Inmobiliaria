package laboratorio

class Empleado extends Persona {
String rol
    static constraints = {
      rol blank: false
    }
}
