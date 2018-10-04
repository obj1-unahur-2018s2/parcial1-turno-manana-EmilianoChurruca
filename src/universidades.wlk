class Universidad {
	var provincias
	var honorario
	
	method provincia(lugar) {
		provincias = lugar	
	}
	method provincia() {
		return provincias 
	}
	method honorariosRecomendados(valor) {
		honorario = valor
	}
	method honorariosRecomendados() {
		return honorario 
	}
}
