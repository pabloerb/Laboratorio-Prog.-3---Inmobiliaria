package laboratorio

class SecurityInterceptor {

  boolean after() { true }

  void afterView() {
      // no-op
  }

  SecurityInterceptor() {
    /*matchAll().excludes(controller:'login', action:'login')
      .excludes(controller:'autor', action:'list')
      .excludes(controller:'libro', action:'list')
      .excludes(view:"/index")*/

    /*  match(controller:"autor", action:"edit")
      match(controller:"autor", action:"create")
      match(controller:"autor", action:"save")
      match(controller:"autor", action:"delete")
      match(controller:"libro", action:"edit")
      match(controller:"libro", action:"save")
      match(controller:"libro", action:"create")
      match(controller:"libro", action:"delete")*/
      match(controller:"propiedad",action:"create")
      match(controller:"propiedad",action:"delete")
      match(controller:"propiedad",action:"save")
      match(controller:"propiedad",action:"update")

      match(controller:"administracion",action:"create")
      match(controller:"administracion",action:"delete")
      match(controller:"administracion",action:"save")
      match(controller:"administracion",action:"update")
      match(controller:"administracion",action:"buscarPropiedades")
      match(controller:"administracion", action:"mostrarInfo")
  }

  boolean before() {
      if (!session.usuario && actionName != "login") {
          redirect(controller: "login", action: "login")
          return false
      }

      if(controllerName=='usuario' && (actionName=='edit' || actionName=='save' || actionName=='create' || actionName=='delete' )) {
        if(!session.usuario.getRoles().any{it.authority=='ADMIN'}) {
            render(view: "/index", model: [message:'No tiene permisos para la accion solicitada'])
            return false
        }
      }


      return true
  }
}
