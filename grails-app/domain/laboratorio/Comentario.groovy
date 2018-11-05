package laboratorio

class Comentario {

  String comentario
  String estado
  Cliente cliente

    static constraints = {
    comentario (blank:false, size:1..500)
    estado (inList:['No leido','Leido'])
    cliente (nullable:false)
    }


    String toString()
{
  return [""+this.comentario+""]
}
}
