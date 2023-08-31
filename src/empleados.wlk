object galvan {
	var property sueldo = 150000
	var totalDinero = 0
	var totalDeuda = 0

		method cobrarSueldo() {
		totalDinero += 0.max(sueldo-totalDeuda)
		totalDeuda = 0.max(totalDeuda-sueldo)
	}
	
	method pagarDeudas(){
		totalDinero -= totalDeuda
	}
	
	method gastar(cantidad){
		totalDeuda += 0.max(cantidad - totalDinero)
		totalDinero = 0.max(totalDinero - cantidad)
	}
	
	
	
	
	method totalDeuda() = totalDeuda
	method totalDinero() = totalDinero
	
}


object baigorria {
	var cantidadEmpanadasVendidas= 1000
	const montoPorEmpanada= 150
	var totalCobrado
	
	method totalCobrado() = totalCobrado
	
	method venderEmpanada(){
		cantidadEmpanadasVendidas += 1
	}
	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() {
		 totalCobrado += self.sueldo()
	}
}

object gimenez {
	var dinero = 3000000
	method dinero () {return dinero}
	method pagarA(empleado) {
		dinero -= empleado.sueldo()
	}
	
}