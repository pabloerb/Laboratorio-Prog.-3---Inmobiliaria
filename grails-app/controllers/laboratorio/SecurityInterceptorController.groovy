package laboratorio

class SecurityInterceptor {

  boolean after() { true }

  void afterView() {
      // no-op
  }

  SecurityInterceptor() {

      match(controller:"propiedad",action:"create")
      match(controller:"propiedad",action:"delete")
      match(controller:"propiedad",action:"save")
      match(controller:"propiedad",action:"update")
      match(controller:"propiedad",action:"edit")
      match(controller:"cliente",action:"edit")
      match(controller:"cliente",action:"update")
      match(controller:"cliente",action:"delete")
      match(controller:"cliente",action:"index")
      match(controller:"comentario",action:"delete")
      match(controller:"comentario",action:"update")
      match(controller:"comentario",action:"edit")
      match(controller:"comentario",action:"show")
      match(controller:"comentario",action:"index")
      match(controller:"propietario",action:"create")
      match(controller:"propietario",action:"delete")
      match(controller:"propietario",action:"save")
      match(controller:"propietario",action:"update")
      match(controller:"propietario",action:"edit")
      match(controller:"propietario",action:"show")
      match(controller:"propietario",action:"index")
  }

  boolean before() {
      if (!session.usuario && actionName != "login") {
          redirect(controller: "login", action: "login",model: [message:"No tiene permisos para la accion solicitada"])
          return false
      }

      if(controllerName=='propiedad' && (actionName=="edit" || actionName=="save" || actionName=="create" || actionName=="delete" || actionName=="update" )) {
        if(!session.usuario.getRoles().any{it.authority=="ADMIN"}) {
            render(view: "../administracion/gestion", model: [message:"No tiene permisos para la accion solicitada"])
            return false
        }
      }

      if(controllerName=='cliente' && (actionName=="edit" || actionName=="delete" || actionName=="update" || actionName=="index"  )) {
        if(!session.usuario.getRoles().any{it.authority=="ADMIN"}) {
            render(view: "../administracion/gestion", model: [message:"No tiene permisos para la accion solicitada"])
            return false
        }
      }


      if(controllerName=='comentario' && (actionName=="edit" || actionName=="save" || actionName=="create" || actionName=="delete" || actionName=="update" || actionName=="show" || actionName=="index" )) {
        if(!session.usuario.getRoles().any{it.authority=="ADMIN"}) {
          if(!session.usuario.getRoles().any{it.authority=="OPERADOR"})
          {
            render(view: "../administracion/gestion", model: [message:"No tiene permisos para la accion solicitada"])
            return false

          }
        }

      }


      if(controllerName=='propietario' && (actionName=="edit" || actionName=="save" || actionName=="create" || actionName=="delete" || actionName=="update" || actionName=="show" || actionName=="index"  )) {
        if(!session.usuario.getRoles().any{it.authority=="ADMIN"}) {
            render(view: "../administracion/gestion", model: [message:"No tiene permisos para la accion solicitada"])
            return false
        }
      }

      return true
  }
}
