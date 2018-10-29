package laboratorio

class Cliente extends Persona {
def propiedades

static hasMany= [propiedades:Propiedad]

    static constraints = {
    }
}
