import plagas.*

class Hogar {
	var nivelDeMugre
	var nivelDeConfort 
	
	method nivelDeMugre() = nivelDeMugre
	method nivelDeConfort() = nivelDeConfort
	method esBueno() = nivelDeMugre <= (nivelDeConfort / 2)
	method recibirAtaqueDe(unaPlaga){
		nivelDeMugre = nivelDeMugre + unaPlaga.nivelDeDanio()
	}
}

class Huerta {
	var capacidadDeProduccion
	var nivelDeProduccion 
	method capacidadDeProduccion() = capacidadDeProduccion
	method nivelDeProduccion() = nivelDeProduccion
	method esBueno() = capacidadDeProduccion > nivelDeProduccion 
	method recibirAtaqueDe(unaPlaga){
		const danioRecibido = capacidadDeProduccion * 0.1
		capacidadDeProduccion = if(unaPlaga.transmiteEnfermedades()) 0.max(capacidadDeProduccion - danioRecibido - 10) 
								else 0.max(capacidadDeProduccion - danioRecibido) 
	}
}

class Mascota {
	var nivelDeSalud 
	method nivelDeSalud() = nivelDeSalud
	method esBueno() = nivelDeSalud > 250
	method recibirAtaqueDe(unaPlaga){
		nivelDeSalud = if(unaPlaga.transmiteEnfermedades()) nivelDeSalud - unaPlaga.nivelDeDanio() else nivelDeSalud
	}
}