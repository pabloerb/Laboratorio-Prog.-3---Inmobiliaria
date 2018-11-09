package laboratorio

import grails.gorm.services.Service

@Service(Propiedad)
class AdministracionService{

  def buscarPropiedades(String barrio,String ciudad, String estado) {
    barrio='%'+barrio.trim()+'%'
    ciudad='%'+ciudad.trim()+'%'
    return Propiedad.executeQuery("FROM Propiedad as l WHERE l.barrio like :barrio AND l.ciudad like :ciudad AND l.estado like :estado",[barrio: barrio,ciudad:ciudad,estado:estado])
  }
}
