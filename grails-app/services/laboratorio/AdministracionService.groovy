package laboratorio

import grails.gorm.services.Service

@Service(Propiedad)
class AdministracionService{

  def buscarPropiedades(String barrio,String ciudad) {
    return Propiedad.executeQuery("select FROM Propiedad as l WHERE l.barrio = :barrio && l.ciudad= :ciudad",[barrio: barrio,ciudad:ciudad])
  }
}
