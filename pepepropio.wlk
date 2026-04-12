object pepe {

    var categoria = gerente

    var cantFaltas = 0
    
    var bonoResultados = bonoNulo
    
    var bonoPresentismo = bonoPresentismoNulo
    
    method sueldo()= self.neto() + bonoResultados.bonoResultados(self) + bonoPresentismo.bonoPresentismo(self)
    
    method bonoPresentismo() = bonoPresentismo
    
    method bonoResultados() = bonoResultados 
    
    method neto() = categoria.sueldoNeto()
    
    method categoria() = categoria 
    
    method cantFaltas() = cantFaltas
    
    method setCategoria(nc) {
      categoria = nc
    }
    
    method setBonoResultado(nb) {
      bonoResultados = nb
    }
    
    method setBonoPresentismo(nbp) {
      bonoPresentismo = nbp
    }
    
    method setCantidadDeFaltas(cant) {
      cantFaltas = cant
    }
 }
 object sofia {
    var categoria = gerente
    
    var bonoResultados = bonoNulo
    
    method sueldo() = self.neto() + bonoResultados.bonoResultados(self)

    method neto() = categoria.sueldoNeto() * 1.3

    method categoria() = categoria

    method bonoResultados() = bonoResultados

    method setCategoria(nc) {
      categoria = nc
    }

    method setBonoResultado(nb) {
      bonoResultados = nb
    } 
 }
 object roque {

    var bonoResultados = bonoNulo
    
    method sueldo() = self.neto() + bonoResultados.bonoResultados(self) + 9000
    
    method bonoResultados() = bonoResultados

    method setBonoResultados(nuevoBonoR) {
      bonoResultados = nuevoBonoR
    }

    method neto() = 28000 

 }

 object ernesto {

    var compañero = pepe

    var bonoPresentismo = bonoPresentismoNulo

    const cantFaltas = 0

    method sueldo() = self.neto() + bonoPresentismo.bonoPresentismo(self)

    method neto() = compañero.neto()

    method compañero() = compañero

    method bonoPresentismo() = bonoPresentismo  

    method setCompañero(nuevoC) {
        compañero = nuevoC
    }

    method setBonoPresentismo(nbp) {
      bonoPresentismo = nbp
    }

 }

//Categorias//
object gerente {
    method sueldoNeto() = 15000 
}
object cadete {
    method sueldoNeto() = 20000 
}
object vendedor {
    var aumentoDeVentas = true
    method sueldoNeto() = 
    if (aumentoDeVentas==true) {
        16000 * 1.25
    } else {
        16000
    }

    method activarAumentoPorMuchasVentas() {
      aumentoDeVentas = true
    }

    method desactivarAumentoPorMuchasVentas() {
      aumentoDeVentas = false
    }
}
object medioTiempo {
    var categoriaInicial = cadete
    method categoriaBase(nuevaCat) {
        categoriaInicial = nuevaCat
    } 
    method sueldoNeto() = categoriaInicial.sueldoNeto() / 2

}
//Bonos por resultado//
object bonoPorcentual {
    method bonoResultados(empleado) = empleado.neto() * 0.1 
}
object bonoMontoFijo {
    method bonoResultados(empleado) = 800
}
object bonoNulo {
    method bonoResultados(empleado) = 0 
}
// Bonos por presentismo //
object bonoPresentismoNormal {
    method bonoPresentismo(empleado) =
        if (empleado.cantFaltas() == 0) {
           2000 
        } else if (empleado.cantFaltas() == 1) {
            1000
        } else {
            0
        }
}
object bonoPresentismoAjuste {
    method bonoPresentismo(empleado) =
        if (empleado.cantFaltas() == 0) {
            100
        } else {
            0
        }
}
object bonoPresentismoDemagogico {
    method bonoPresentismo(empleado) =
        if (empleado.neto() < 18000) {
            500
        } else {
            300
        }
}
object bonoPresentismoNulo {
    method bonoPresentismo(empleado) = 0 
}