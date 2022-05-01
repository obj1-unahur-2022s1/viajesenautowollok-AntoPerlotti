/*
 * Oficina: Muy bien. Solo dejo una sugerencia mínima. 
 */

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
	
	method remiseraElegidaParaViaje(cliente, kms) =
		/* Te dejo una variante que delega parte del cálculo en otro método
		 * para hacer más simples las expresiones, pero está bien tu implementación
		 */
		if (self.difPrecio(cliente,kms) > 30) segundaRemisera else primeraRemisera

	method difPrecio(cliente,kms) = 
		primeraRemisera.precioPorViaje(cliente,kms) - segundaRemisera.precioPorViaje(cliente,kms)
		
}
