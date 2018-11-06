package laboratorio

class Comentario {

  String comentario
  String estado
  Propiedad propiedad

    static constraints = {
    comentario (blank:false, size:1..500)
    estado (inList:['No leido','Leido'])
    propiedad (nullable:false)
    }


    String toString()
{
  return [""+this.comentario+""]
}
}
