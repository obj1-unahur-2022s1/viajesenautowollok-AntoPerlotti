/*
 * Clientas:B(-). Faltó implementar el método setter para poder cambiar el valor del
 *                precioPorKm. Y van algunas sugerencias más. 
 */

object ludmila{
	/* Te dejo la forma resumida de escribir estos métodos getter (de consulta) */
	method precioPorKm() = 18
}

object anaMaria{
	/* Faltaría el método para cambiar la estabilidad económica de anaMaria; te
	 * dejo un ejemplo de como se podría implementar.
	 * Con respecto al método precioPorKm(), dado que puede cambiar la variable
	 * estaEstable, no sería del todo correcta la implementación que utilizaste.
	 * Te dejo una forma de hacerlo y también como quedaría resumida.
	 * Y te inicializo estaEstable en true para que den bien los test
	 */
	var estaEstable= true
	
	method estaEstable(){
		return estaEstable
	}
	
	method cambiarEstabilidad() {estaEstable = not estaEstable}
	
	method precioPorKm() = if(estaEstable) 30 else 25
}

object teresa{
	/* No está mal usar un getter para la variable precioKm, y usarlo luego
	 * en el método precioPorKm() que por contrato, respeta el polimorfismo con los 
	 * otros objetos del modelo, pero es innecesario para esta implementación. Te
	 * dejo la forma resumida.
	 * Falta el método setter para poder cambiar el precio por km, te detallo abajo
	 * un ejemplo de como hacerlo:
	 * 
	 */
	var precioKm= 22
	
	method precioPorKm() = precioKm
	method precioPorKm(nuevoPrecio) {precioKm = nuevoPrecio}
	
}

object melina{
	/* Están bien implementados los métodos. Te dejo unas variantes y especialmente
	 * en el caso de precioPorKm() la posibilidad de usar directamente la variable en
	 * el getter y así simplificar la expresión.
	 */
	var trabajaPara
	
	method trabajaPara(nombreClienta){
		trabajaPara= nombreClienta
	}
	
	method trabajaPara(){
		return trabajaPara
	}
	
	method precioPorKm() = trabajaPara.precioPorKm() - 3

}