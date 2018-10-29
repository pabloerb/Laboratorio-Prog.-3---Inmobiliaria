package laboratorio

class Persona {

  String nombre
  String apellido
  String nrodocumento
  String direccion
  Integer telefono
  String correo
  String contrasena

    static constraints = {
      nombre (blank: false)
      apellido (blank: false)
      nrodocumento (blank: false, unique: true)
      direccion (blank: false)
      telefono (nullable: true, unique: true, matches:"[0-9]{3}[-][0-9]{6}")
      correo (email: true, blank: false, unique: true, nullable: false)
      contrasena (size: 1..8, blank: false, unique:true, nullable: false)
    }
}
