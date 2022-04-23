import remiseras.*
import clientas.*

object oficina {
	var primeraRemisera
	var segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2){
		primeraRemisera= remisera1
		segundaRemisera= remisera2
	}
	
	method primeraRemisera(){
		return primeraRemisera
	}
	
	method segundaRemisera(){
		return segundaRemisera
	}
	
	method cambiarPrimerRemiserarPor(remisera){
		primeraRemisera= remisera
	}
	
	method cambiarSegundaRemiseraPor(remisera){
		segundaRemisera= remisera
	}
	
	method intercambiarRemiseras(){
		self.asignarRemiseras(segundaRemisera, primeraRemisera)
	}
	
	method remiseraElegidaParaViaje(cliente, kms){
		if(self.primeraRemisera().precioPorViaje(cliente, kms) - self.segundaRemisera().precioPorViaje(cliente, kms) > 30){
			return self.segundaRemisera()
		} else{
			return self.primeraRemisera()
		}
	}	
}
