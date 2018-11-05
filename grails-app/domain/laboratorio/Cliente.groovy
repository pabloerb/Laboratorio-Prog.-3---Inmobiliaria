package laboratorio

class Cliente {

String nombre
String apellido
String email
Long dni
Propiedad propiedad
Comentario comentario


    static constraints = {
      nombre (blank:false,size:1..20)
      apellido (blank:false, size:1..20)
      email (blank:false,email:true,unique:true)
      dni (blank:false,unique:true)
      propiedad (nullable:true)
      comentario (nullable:true)
    }

    String toString()
{
  return [this.apellido+" "+this.nombre]
}
}
