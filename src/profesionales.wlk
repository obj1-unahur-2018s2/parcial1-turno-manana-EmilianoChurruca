import universidades.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { 
		return universidad
	}
	method universidad(univ) {
		universidad = univ
	}
	
	method provinciasDondePuedeTrabajar() { 
		return #{"Entre Ríos", "Corrientes", "Santa Fe"}
	}
	
	method honorariosPorHora() { 
		return 3000
	}
	method sueldo(facultad, valor){
		return asociacion.recaudar(valor)
	}
}


object asociacion {
	var totalRecaudado = 0 
	method recaudar(valor) {
		return totalRecaudado += valor
	}
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { 
		return universidad
	}
	method universidad(univ) { 
		universidad = univ
	}
	method provinciasDondePuedeTrabajar(){
		return universidad.provincia()
	}
	method honorariosPorHora() {
		return universidad.honorariosRecomendados()
	}	
	method sueldo(facultad , valor){
		return universidad.recaudar(valor/2)
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var provinciaATrabajar = #{ }
	var honorarios
	
	method universidad() { 
		return universidad
	}
	method universidad(univ) { 
		universidad = univ
	}
	method provinciasDondePuedeTrabajar(provincias) {
		provinciaATrabajar = provincias
	}
	method provinciasDondePuedeTrabajar(){
		return provinciaATrabajar
	}
	method honorariosPorHora(valor){
		honorarios = valor
	}
	method honorariosPorHora() {
		return honorarios
	}
}












