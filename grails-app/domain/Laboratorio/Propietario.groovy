package laboratorio

class Propietario {
  String nombre
  String apellido
  String email
  Long dni

    static constraints = {
      nombre (blank:false,size:1..20)
      apellido (blank:false, size:1..20)
      email (blank:false,email:true,unique:true)
      dni (blank:false,unique:true)
    }

    String toString()
{
  return [this.apellido+" "+this.nombre]
}

}
