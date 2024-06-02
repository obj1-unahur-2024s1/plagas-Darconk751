import elementos.*

class Plaga {
	var poblacion
	
	method poblacion() = poblacion
	method nivelDeDanio() = poblacion
	method transmiteEnfermedades() = poblacion >= 10
	method aumentoDePoblacion(){
		poblacion = poblacion * 1.1
	}
	method atacarA(unElemento){
		unElemento.recibirAtaqueDe(self)
		self.aumentoDePoblacion()
	}
}

class Cucaracha inherits Plaga {
	var pesoPromedioDeBicho
	method pesoPromedioDeBicho() = pesoPromedioDeBicho
	override method nivelDeDanio() = super() / 2
	override method transmiteEnfermedades() = super() and pesoPromedioDeBicho >= 10
	override method aumentoDePoblacion(){
		super()
		pesoPromedioDeBicho = pesoPromedioDeBicho + 2
	}
}

class Pulga inherits Plaga {
	override method nivelDeDanio() = super() * 2
}

class Garrapata inherits Pulga {
	override method aumentoDePoblacion(){
		poblacion = poblacion * 1.2
	}
}

class Mosquito inherits Plaga {
	override method transmiteEnfermedades() = super() and poblacion % 3 == 0
}


