package laboratorio

class Propiedad {

   String calle
   Integer numero
   String localidad
   String barrio
   String ciudad
   Float mts2
   Float precio
   String categoria
   String estado
   String tipoOperacion
   static belongsTo=[propietario:Cliente]
   static hasMany=[comentarios:Comentario]

    static constraints = {
      calle (blank: false)
      numero (nullable: false)
      localidad (blank: false)
      barrio (blank: false)
      ciudad (blank: false)
      mts2 (nullable: false)
      estado (inList:["Disponible","No Disponible"])
      comentarios (nullable:true)
      tipoOperacion (blank: false)
      precio (nullable: false)
    }
}
