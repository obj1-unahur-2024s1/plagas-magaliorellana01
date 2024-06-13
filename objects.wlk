class Hogar{
	var property nivelDeMugre 
	var property confort
	
	method esBueno(){
		return 
		nivelDeMugre / 2 <= confort * 0.5
	}
	
	method efectosDeUnAtaque(unaPlaga){
		 nivelDeMugre = unaPlaga.nivelDeDanio()
	}
}

class Huerta{
	var property capacidadDeProduccion 
	var nivel = 0
	method esBueno(){
		return capacidadDeProduccion > nivel
	}
	
	method efectosDeUnAtaque(unaPlaga){
		capacidadDeProduccion = capacidadDeProduccion - unaPlaga.nivelDeDanio() * 0.1
		if (unaPlaga.transmiteEnfermedades()){
			capacidadDeProduccion = capacidadDeProduccion - 10
		}
	}
	
}

class Mascota{
	var property nivelDeSalud
	
	method esBueno(){
		return nivelDeSalud > 250
	}
	
	method efectosDeUnAtaque(unaPlaga){
		 if (unaPlaga.transmiteEnfermedades()){
		 	nivelDeSalud = nivelDeSalud - unaPlaga.nivelDeDanio()
		 }
	}
}

class Barrio{
	const elementosBuenos = []
	const elementosMalos = []
	
	method agregarElementos(unElemento){
		if (unElemento.esBueno()){
			elementosBuenos.add(unElemento)
		}
		else elementosMalos.add(unElemento)
	}
	
	method esCopado(){
		return elementosBuenos.size() > elementosMalos.size()
	}
}

