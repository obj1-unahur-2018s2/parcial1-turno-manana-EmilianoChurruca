import profesionales.*
import universidades.*

class Empresas {
	var honorarioReferencia
	const empleados = []
	
	method honorarioReferencia(valor) {
		honorarioReferencia = valor
	}
	method honorarioReferencia() {
		return honorarioReferencia 	
	}
	method agregarEmpleado(empleado){
		empleados.add(empleado)
	}
	method quitarEmpleado(empleado) {
		empleados.remove(empleado)
	}
	method profesionalesCaros() {
		return empleados.filter(
			{honorario => honorario.honorariosPorHora() > honorarioReferencia}
		)
	}
	method universidadesFormadoras() {
		return (empleados.map({lugar => lugar.universidad()})).asSet()
	}
	method profesionalMasBarato() {
		return empleados.min({ honorario => honorario.honorariosPorHora()})
	}
	method provinciaCubierta(provincias){
		return empleados.any(
			{provincia => provincia.provinciasDondePuedeTrabajar() == provincias }
		)
	}
	method empleadosPorProvincia(provincia) {
		return empleados.count({lugar => lugar.universidad() == provincia  })
	}
	method esPocoAtractivo(empleado){
		return empleado.provinciasDondePuedeTrabajar({valor => valor.honorariosPorHora()})
	}
}
