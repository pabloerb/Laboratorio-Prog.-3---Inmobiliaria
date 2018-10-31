package laboratorio

class PropiedadController {

PropiedadService propiedadService
  def show(Long id) {
      respond propiedadService.get(id)
  }
