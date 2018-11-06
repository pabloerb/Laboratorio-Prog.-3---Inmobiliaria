package laboratorio

class Comentario {

  String comentario
  String estado

    static constraints = {
    comentario (blank:false, size:1..500)
    estado (inList:['No leido','Leido'])
    }


    String toString()
{
  return [""+this.comentario+""]
}
}
