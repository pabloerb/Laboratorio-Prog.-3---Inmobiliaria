package laboratorio

class Comentario {

  String comentario
  String estado

    static constraints = {
    comentario (blank:true, maxSize:500)
    estado (blank: false, maxSize: 15, inList:['Leido','No Leido'])
    }
}
