import objects.*

class PlagaDeCucarachas{
	var poblacion
	var property pesoPromedio
	
	method transmiteEnfermedades(){
		return poblacion >= 10 and pesoPromedio >= 10
	}
	
	method nivelDeDanio(){
		return poblacion / 2
	}
	
	method efectoDeAtaque(){
		poblacion = poblacion + (poblacion * 0.1) 
		pesoPromedio = pesoPromedio + 2
	}
	
	method atacarElemento(unElemento){
		self.efectoDeAtaque()
		unElemento.efectosDeUnAtaque(self)
	}
}

class PlagaDePulgas {
	var poblacion
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
	
	method nivelDeDanio(){
		return poblacion * 2
	}
	
	method efectoDeAtaque(){
		poblacion = poblacion + (poblacion * 0.1)
	}
	
	method atacarElemento(unElemento){
		self.efectoDeAtaque()
		unElemento.efectosDeUnAtaque(self)
	}
}

class PlagaDeGarrapatas inherits PlagaDePulgas{
	override method efectoDeAtaque(){
		poblacion = poblacion + (poblacion * 0.2)
	}
}

class PlagaDeMosquitos {
	var poblacion
	method transmiteEnfermedades(){
		return poblacion >= 10 and poblacion % 3 == 0
	}
	
	method nivelDeDanio(){
		return poblacion
	}
	
	method efectoDeAtaque(){
		poblacion = poblacion + (poblacion * 0.1)
	}
	
	method atacarElemento(unElemento){
		self.efectoDeAtaque()
		unElemento.efectosDeUnAtaque(self)
	}
}


