import universidades.*
import empresas.*
import profesionales.*

class Personas {
	var viveEnProvincia
	
	method provinciaDondeVive(provincia) {
		viveEnProvincia = provincia
	}
	method puedeSerAtendida(profesional){
		return profesional.provinciasDondePuedeTrabajar(viveEnProvincia)
	}
	
}


class Instituciones {
	
	const universidades = []
	method conocerUniversidad(universidad) {
		universidades.add(universidad)
	}
	method puedeSerAtendida(profesional){
		universidades.any({universidad => universidad.universidadesFormadoras()})
	}
}
