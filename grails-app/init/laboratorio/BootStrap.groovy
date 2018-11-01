package laboratorio

class BootStrap {

    def init = {

    def usu1=new Cliente(nombre:"Arturo",apellido:"Jimenez",dni:12345,email:"hola@gmail.com")
    usu1.save(flush:true)


      def propi1=new Propiedad(calle:"Rivadavia",numero:253,localidad:"Capital",barrio:"Hola",ciudad:"Chau",mts2:30,precio_venta:400,precio_alquiler:6000,categoria:"Casa",estado:"Disponible",cliente:usu1)
      propi1.save(flush:true)
      println("Calle:"+propi1.calle+" Numero:"+propi1.numero+" Localidad:"+propi1.localidad+" Barrio:"+propi1.barrio+" Ciudad:"+propi1.ciudad+" mts2:"+propi1.mts2+" Precio Venta:"+propi1.precio_venta+" Precio Alquiler:"+propi1.precio_alquiler+" Estado:"+propi1.estado)
    }
    def destroy = {
    }
}
