package laboratorio

import java.security.MessageDigest

class Usuario implements Serializable {
    private static final long serialVersionUID = 1

    String nombre
    String apellido
    String nombreUsuario
    String nrodocumento
    String direccion
    Integer telefono
    String email
    String password

      def generateMD5_A(String s){
          return MessageDigest.getInstance("MD5").digest(s.bytes).encodeHex().toString()
      }

      boolean equals(otro) {
        is(otro) || (otro instanceof Usuario && otro.email == email)
      }


      String toString() {
        nombreUsuario
      }

      Set<Rol> getRoles() {

                    if (nombreUsuario!=null) {
                        UsuarioRol.findAllByUsuario(this)*.rol
                    } else {
                        new TreeSet<Rol>()
                    }
      }

          Set<UsuarioRol> getUsuarioRol() {
        UsuarioRol.findAllByUsuario(this)
      }

      def beforeInsert() {
        password=generateMD5_A(password)

      }

      def beforeUpdate() {
        if (isDirty('password')) {
          password=generateMD5_A(password)
        }
      }

            def beforeValidate() {
                nombreUsuario=nombreUsuario?.toUpperCase()
                email=email?.toLowerCase()

            }

    static constraints = {
      nombre (blank: false)
      apellido (blank: false)
      nombreUsuario (blank:false,unique:true)
      nrodocumento (blank: false, unique: true)
      direccion (blank: false)
      telefono (nullable: true, unique: true, matches:"[0-9]{3}[-][0-9]{6}")
      email (email: true, blank: false, unique: true)
      password (size: 1..8, blank: false, unique:true)
    }
}
