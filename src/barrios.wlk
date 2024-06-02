import elementos.*

class Barrio {
	const elementos = []
	method elementos() = elementos
	method agregarElemento(unElemento){
		elementos.add(unElemento)
	}
	method eliminarElemento(unElemento){
		elementos.remove(unElemento)
	}
	method agregarElementos(listaDeElementos){
		elementos.addAll(listaDeElementos)
	}
	method cantidadDeElementosBuenos() = elementos.count({elemento => elemento.esBueno()})
	method cantidadDeElementosMalos() = elementos.count({elemento => ! elemento.esBueno()})
	method esCopado() = self.cantidadDeElementosBuenos() > self.cantidadDeElementosMalos()
}
