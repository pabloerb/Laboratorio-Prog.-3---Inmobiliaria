package laboratorio

class BootStrap {

    def init = {

    def cli1=new Cliente(nombre:"Arturo",apellido:"Jimenez",dni:12345,email:"hola@gmail.com")
    cli1.save(flush:true)


      def propi1=new Propiedad(calle:"Rivadavia",numero:253,localidad:"Capital",barrio:"Hola",ciudad:"Chau",mts2:30,precio_venta:400,precio_alquiler:6000,categoria:"Casa",estado:"Disponible",propietario:cli1)
      propi1.save(flush:true)
      println("Calle:"+propi1.calle+" Numero:"+propi1.numero+" Localidad:"+propi1.localidad+" Barrio:"+propi1.barrio+" Ciudad:"+propi1.ciudad+" mts2:"+propi1.mts2+" Precio Venta:"+propi1.precio_venta+" Precio Alquiler:"+propi1.precio_alquiler+" Estado:"+propi1.estado)


    def usu1=new Usuario(nombre:"Pablo",apellido:"Rodriguez",nrodocumento:1234567,nombreUsuario:"Pablorb",direccion:"Rivadavia",email:"pablorb94@gmail.com",password:"hola123")
    usu1.save(flush:true)
    def rol1=new Rol(authority:"ADMIN")
    rol1.save(flush:true)
    def usurol1=new UsuarioRol(usuario:usu1,rol:rol1)
    usurol1.save(flush:true)

    def usu2=new Usuario(nombre:"Emilio",apellido:"Brizuela",nrodocumento:89101112,nombreUsuario:"Emiliorb",direccion:"Rivadavia",email:"pabloerb94@gmail.com",password:"chau123")
    usu2.save(flush:true)
    def rol2=new Rol(authority:"OPERADOR")
    rol2.save(flush:true)
    def usurol2=new UsuarioRol(usuario:usu2,rol:rol2)
    usurol2.save(flush:true)

    }
    def destroy = {
    }
}
