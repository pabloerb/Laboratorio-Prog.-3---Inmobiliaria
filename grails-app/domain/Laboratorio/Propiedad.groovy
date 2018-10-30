package Laboratorio

class Propiedad {

   String calle
   Integer numero
   String localidad
   String barrio
   String ciudad
   Float mts2
   Float precio_venta
   Float precio_alquiler
   Usuario usuario

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
