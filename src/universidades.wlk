class Universidad {
	var provincias
	var honorario
	var totalRecaudado = 0
	
	
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
	
	method recaudar(valor) {
		return totalRecaudado += valor
		
	}
	
}
