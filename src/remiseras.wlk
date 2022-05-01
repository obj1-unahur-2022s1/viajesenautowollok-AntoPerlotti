/*
 * Remiseras: Muy bien. Solo te dejo sugerencias para simplificar código. 
 */

import clientas.*

object roxana{
	/* Te dejo la versión resumida para estos métodos de consulta */
	method precioPorViaje(cliente, cantidadKms) = 
		cliente.precioPorKm() * cantidadKms
}

object gabriela{
	/* va versión resumida */
	method precioPorViaje(cliente, cantidadKms) = 
		cliente.precioPorKm() * cantidadKms * 1.2
}

object mariela{
	/* Muy bien implementado el método max() en precioPorViaje */	
	method precioPorViaje(cliente, cantidadKms) = 
		50.max(cliente.precioPorKm() * cantidadKms)
}

object juana{
	/* Otro forma más resumida */
	method precioPorViaje(cliente, cantidadKms) =
		if(cantidadKms<= 8) 100  
		else 200 
}

object lucia{
	/* Va más abajo la forma resumida para precioPorViaje de lucia */
	var reemplazoDe
	
	method reemplazoDe(nombreRemisera){
		reemplazoDe= nombreRemisera
	}
	
	method reemplazoDe(){
		return reemplazoDe
	}
	
	method precioPorViaje(cliente, cantidadKms) = 
		reemplazoDe.precioPorViaje(cliente, cantidadKms)
}