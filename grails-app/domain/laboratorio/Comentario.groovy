package laboratorio

class Comentario {

  String comentario
  String estado
  Propiedad propiedad
  Cliente cliente

    static constraints = {
    comentario (blank:false, size:1..500)
    estado (inList:['No leido','Leido'])
    cliente (nullable:false)
    propiedad (nullable:false)
    }


    String toString()
{
  return [""+this.comentario+""]
}
}
