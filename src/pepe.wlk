//CATEGORIAS

object gerente {
	
	method neto() {
		return 15000
	}
	
}

object cadete {
	
	method neto() {
		return 20000
	}
	
}

//BONO POR RESULTADO

object resultadoPorcentual {
	
	method valor(empleado){
		return empleado.neto() * 0.10
	}
	
}

object resultadoFijo {
	
	method valor(empleado){
		return 800
	}
	
}

object resultadoNulo {
	
	method valor(empleado){
		return 0
	}
	
}

//BONO POR PRESENTISMO

object presentismoNormal {
	
	method valor(empleado){
		return if (empleado.faltas() == 0){
			2000
		} else if (empleado.faltas() == 1){
			1000
		} else {
			0
		}
	}
	
}

object presentismoAjuste {
	
	method valor(empleado){
		return if (empleado.faltas() == 0) {100} else {0}
	}
	
}

object presentismoDemagogico {
	
	method valor(empleado){
		return if (empleado.neto() < 18000){
			500
		} else {
			300
		}
	}
}

object presentismoNulo {
	
	method valor(empleado){
		return 0
	}
	
}

//EMPLEADOS

object pepe {
	
	var categoria = gerente
	var bonoPorResultado = resultadoNulo
	var bonoPorPresentismo = presentismoNulo
	var faltas = 0
	
	method categoria (_categoria){
		categoria = _categoria
	}
	
	method bonoPorResultado (_bonoPorResultado){
		bonoPorResultado = _bonoPorResultado
	}
	
	method bonoPorPresentismo (_bonoPorPresentismo){
		bonoPorPresentismo = _bonoPorPresentismo
	}
	
	method faltas (_faltas){
		faltas = _faltas
	}
	
	method faltas() {
		return faltas
	}
	
	method  sueldo(){
		return self.neto() + self.resultado() + self.presentismo()
	}
	
	method neto(){
		return categoria.neto()
	}
	
	method resultado(){
		return bonoPorResultado.valor(self)
	}
	
	method presentismo(){
		return bonoPorPresentismo.valor(self)
	}
}