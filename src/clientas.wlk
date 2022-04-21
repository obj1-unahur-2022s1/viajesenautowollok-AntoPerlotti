import remiseras.*
object ludmila{
	method precioPorKm(){
		return 18
	}
	
}

object anaMaria{
	var estaEstable=22
	
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

object melina{
	var trabajaPara
	
	method trabajaPara(nombreClienta){
		trabajaPara= nombreClienta
	}
	
	method trabajaPara(){
		return trabajaPara
	}
	
	method precioPorKm(){
		return (self.trabajaPara().precioPorKm() - 3)
	}
}