import remiseras.*
object ludmila{
	method precioPorKm(){
		return 18
	}
	
}

object anaMaria{
	var estaEstable= false
	
	method estaEstable(){
		return estaEstable
	}
	method precioPorKm(){
		if(not estaEstable){
			return 30
		} else{
			return 25
		}
	}
}

object teresa{
	var precioKm= 22
	
	method precioKm(){
		return precioKm
	}
	
	method precioPorKm(){
		return self.precioKm()
	}
}