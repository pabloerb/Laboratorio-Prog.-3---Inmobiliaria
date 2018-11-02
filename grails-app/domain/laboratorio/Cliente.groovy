package laboratorio

class Cliente {

String nombre
String apellido
String email
Long dni
static hasMany=[propiedades:Propiedad,comentarios:Comentario]


    static constraints = {
      nombre (blank:false,size:1..20)
      apellido (blank:false, size:1..20)
      email (blank:false,email:true,unique:true)
      propiedades (nullable:true)
      comentarios (nullable:true)
    }

    String toString()
{
  return [this.apellido+" "+this.nombre]
}
}
