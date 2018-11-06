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
   Cliente propietario
    //byte[] imagen
    String nombreImagen


    static constraints = {
      calle (blank: false)
      numero (nullable: false)
      localidad (blank: false)
      barrio (blank: false)
      ciudad (blank: false)
      mts2 (nullable: false)
      estado (inList:["Disponible","No Disponible"])
      tipoOperacion (inList:["Venta","Alquiler"])
      tipoOperacion (blank: false)
      precio (nullable: false)
    }


    String toString()
{
  return ["Barrio:"+this.barrio+" Calle:"+this.calle+" Numero:"+this.numero]
}

}
