object pepe { //Declaración de Objetos en Wollok
  var energia = 100  //Atributo

  method energia() = energia //Método que devuelve un valor
  
  method volar(metros) { //Método que provoca una acción o que el objeto cambie
    energia -= 4*metros
  }
}

object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}