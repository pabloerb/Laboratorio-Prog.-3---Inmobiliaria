package laboratorio

class BootStrap {

    def init = {

      def propietario1=new Propietario(nombre:"Arturo",apellido:"Jimenez",dni:12345,email:"hola@gmail.com")
      propietario1.save(flush:true)

      def propiedad1=new Propiedad(calle:"Rivadavia",numero:253,localidad:"Capital",barrio:"Hola",ciudad:"Chau",mts2:30,precio:6000,categoria:"Casa",estado:"Disponible",tipoOperacion:"Venta",propietario:propietario1, nombreImagen:"oferta1-casa.png")
      propiedad1.save(flush:true)

      def propietario2=new Propietario(nombre:"Alfonso", apellido:"Herrera",dni:17216890,email:"aherrera@gmail.com")
      propietario2.save(flush:true)

      def propiedad2=new Propiedad(calle:"Mikilo",numero:100,localidad:"Capital",barrio:"920 v.v",ciudad:"San Fernando del Valle de Catamarca", mts2:2020,precio:7800,categoria:"Departamento",estado:"Disponible",tipoOperacion:"Alquiler",propietario:propietario2,nombreImagen:"oferta2-departamento.png")
      propiedad2.save(flush:true)

      def propietario3=new Propietario(nombre:"Alejandra",apellido:"Ahumada",dni:28900345,email:"aahumada@gmail.com")
      propietario3.save(flush:true)

      def propiedad3=new Propiedad(calle:"Ayacucho",numero:700,localidad:"Capital",barrio:"1000 v.v",ciudad:"Arequito",mts2:67,precio:34555,categoria:"Local",estado:"Disponible",tipoOperacion:"Venta",propietario:propietario3, nombreImagen:"oferta3-Local.png")
      propiedad3.save(flush:true)

      def propietario4=new Propietario(nombre:"Christian", apellido:"Chavéz",dni:909203100,email:"cchavez@gmail.com")
      propietario4.save(flush:true)

      def propiedad4=new Propiedad(calle:"Maipú",numero:30,localidad:"Capital",barrio:"Antena",ciudad:"San Fernando del Valle de Catamarca",mts2:27,precio:4560,categoria:"Oficina",estado:"Disponible",tipoOperacion:"Alquiler",propietario:propietario4, nombreImagen:"oferta4-oficina.png")
      propiedad4.save(flush:true)

      def propietario5=new Propietario(nombre:"Ludovico",apellido:"Disanto",dni:12345678,email:"ldisanto@gmail.com")
      propietario5.save(flush:true)

      def propiedad5=new Propiedad(calle:"Salta",numero:253,localidad:"Capital",barrio:"Centro",ciudad:"San Fernando del Valle de Catamarca",mts2:25678,precio:10000000,categoria:"Casa",estado:"Disponible",tipoOperacion:"Venta",propietario:propietario5, nombreImagen:"oferta5-casa.png")
      propiedad5.save(flush:true)

      def propietario6=new Propietario(nombre:"Juan",apellido:"Gil",dni:35203145,email:"jgil@gmail.com")
      propietario6.save(flush:true)

      def propiedad6=new Propiedad(calle:"Caseros",numero:289,localidad:"Capital",barrio:"Centro2",ciudad:"San Fernando",mts2:300,precio:90000,categoria:"Departamento",estado:"Disponible",tipoOperacion:"Alquiler",propietario:propietario6, nombreImagen:"oferta6-departamento.png")
      propiedad6.save(flush:true)

      def propietario7=new Propietario(nombre:"Oscar",apellido:"Uckerman",dni:17171717,email:"ouckerman@gmail.com")
      propietario7.save(flush:true)

      def propiedad7=new Propiedad(calle:"Rojas",numero:27,localidad:"Capital",barrio:"Centro3",ciudad:"San Francisco",mts2:78,precio:72000,categoria:"Local",estado:"Disponible",tipoOperacion:"Venta",propietario:propietario7, nombreImagen:"oferta7-local.png")
      propiedad7.save(flush:true)

      def propietario8=new Propietario(nombre:"Maite",apellido:"Perroni",dni:30216907,email:"mperroni@gmail.com")
      propietario8.save(flush:true)

      def propiedad8=new Propiedad(calle:"Rivadavia",numero:264,localidad:"Capital",barrio:"Calchaqui",ciudad:"San Fernando del Valle de Catamarca",mts2:190,precio:4000,categoria:"Oficina",estado:"Disponible",tipoOperacion:"Alquiler",propietario:propietario8, nombreImagen:"oferta8-oficina.png")
      propiedad8.save(flush:true)






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
