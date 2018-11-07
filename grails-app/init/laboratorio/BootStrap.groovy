package laboratorio

class BootStrap {

    def init = {

    def propietario1=new Propietario(nombre:"Arturo",apellido:"Jimenez",dni:12345,email:"hola@gmail.com")
    propietario1.save(flush:true)


      def propiedad1=new Propiedad(calle:"Rivadavia",numero:253,localidad:"Capital",barrio:"Hola",ciudad:"Chau",mts2:30,precio:6000,categoria:"Casa",estado:"Disponible",tipoOperacion:"Venta",propietario:propietario1)
      propiedad1.save(flush:true)

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
