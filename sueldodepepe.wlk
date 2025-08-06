object pepe {
    var categoria = gerente
    var bonoPresentismo = 0
    var property bonoResultados = bonoMontoFijo
    var sueldo = 0 
    var neto = 15000
    var montoBonoResultados = 800
    var property cantidadDeFaltas = 0

    method calcularSueldo(){
        sueldo = neto + montoBonoResultados + bonoPresentismo
    }
    method siguienteCategoria(){
        categoria = categoria.siguienteCategoria()
        neto = categoria.neto()
    }
    method faltarAlTrabajo() {
        cantidadDeFaltas +=1 
    }
    method cambiarBonoPorResultados() {
        bonoResultados = bonoResultados.monto()
        
    }
}
object gerente {
    method siguienteCategoria() = cadete
    method neto() {
        return 15000
    } 
}

object cadete {
    method siguienteCategoria() = gerente
    method neto() {
        return 20000
    } 
}
object bonoPorcentaje {
    method monto(empleado) {
        montoBonoPorResultados=(empleado.neto()*10) / 100

  }
}
object bonoMontoFijo {
    method monto(empleado) {
        return 800    
  }
}
object bonoNulo {
    method monto(empleado) {
        return 0 
  }
}
object bonoNormal {
    method monto(empleado) {
        if (empleado.cantidadDeFaltas()==0){
            empleado.bonoResultados(2000) 
        } 
        if (empleado.cantidadDeFaltas()==1){
            empleado.bonoResultados(1000)
        }
        if (empleado.cantidadDeFaltas()>1){
            empleado.bonoResultados(0)
        }
    }
}
object bonoAjuste {
    method monto(empleado) {
        if (empleado.cantidadDeFaltas()==0){
            empleado.bonoResultados(100)
        }
        if (empleado.cantidadDeFaltas()>0){
            empleado.bonoResultados(0)
        }
  }
}
object bonoDemagogico {
    method monto(empleado) {
      if (empleado.neto()<18000){
        empleado.bonoResultados(500)
      }else{
        empleado.bonoResultados(300)
      }
    }
}