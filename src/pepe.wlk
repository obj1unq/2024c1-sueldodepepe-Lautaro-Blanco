object pepe {
	
	var sueldo=0
	var categoria = gerente
	var bonoPorResultado = nulo
	
	method categoria (_categoria){
		categoria = _categoria
	}
	
	method categoria(){
		return categoria
	}
	
	method  sueldo(){
		return sueldo + self.categoria() + self.bonoPorResultado() + self.bonoPorPresentismo()
	}
	
	method bonoPorResultado(){
		
	}
	
	method bonoPorPresentismo(){
		
	}
}

object gerente {
	
	method valor() {
		return 15000
	}
	
}

object cadete {
	
	method valor() {
		return 20000
	}
	
}


object bonoPorResultado{
	method porcentaje(empleado){
		empleado.categoria()
	}
	
	
}

object bonoPorPresentismo{
	
}