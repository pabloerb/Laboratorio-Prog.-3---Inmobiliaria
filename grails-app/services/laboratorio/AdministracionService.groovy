package laboratorio

import grails.gorm.services.Service

@Service(Propiedad)
class AdministracionService {

  def buscarPropiedades(String barrio,String ciudad) {
    return Propiedad.executeQuery("from Propiedad as l where l.barrio = :barrio and l.ciudad=:ciudad",[barrio: barrio],[ciudad:ciudad])
  }
}
