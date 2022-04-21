import clientas.*

object roxana{
	method precioPorViaje(cliente, cantidadKms){
		return (cliente.precioPorKm() * cantidadKms)
	}
}

object gabriela{
	method precioPorViaje(cliente, cantidadKms){
		return (cliente.precioPorKm() * cantidadKms * 1.2)
	}
}

object mariela{
	
	method precioPorViaje(cliente, cantidadKms){
		return (50.max(cliente.precioPorKm() * cantidadKms))
	}
}

object juana{
	method precioPorViaje(cliente, cantidadKms){
		if(cantidadKms<= 8){
			return 100
		} else{
			return 200
		}
	}
}

object lucia{
	var reemplazoDe
	
	method reemplazoDe(nombreRemisera){
		reemplazoDe= nombreRemisera
	}
	
	method reemplazoDe(){
		return reemplazoDe
	}
	
	method precioPorViaje(cliente, cantidadKms){
		return (self.reemplazoDe().precioPorViaje(cliente, cantidadKms))
	}
}