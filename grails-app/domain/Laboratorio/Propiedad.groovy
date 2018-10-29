package Laboratorio

class Propiedad {

   String calle
   Integer numero
   String localidad
   String barrio
   String ciudad
   float mts2
   float precio_venta
   float precio_alquiler

  static belongsTo=[cliente:Cliente]

    static constraints = {
      calle (blank: false)
      numero (nullable: false)
      localidad (blank: false)
      barrio (blank: false)
      ciudad (blank: false)
      mts2 (nullable: false)
      precio_venta (nullable: false)
      precio_alquiler (nullable: false)
    }
}
