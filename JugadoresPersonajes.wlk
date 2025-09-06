object luisa {// una _jugadora_
    var personajeActivo = 0
    method aparece(elemento) {
        personajeActivo.encontrar(elemento)
    }
    method asignar(unPersonaje) {
        personajeActivo = unPersonaje
    }
}
object floki {// un _personaje_ guerrero
    var arma = ballesta
    method equipadoCon(unArma) {
        arma = unArma
    }
    method encontrar(elemento) {
      if (arma.estaCargada()){
        elemento.danio(arma.potencia())
        arma.gastarUsos()
        }
    }
}
object mario {// un _personaje_ trabajador
    var recolectado = 0
    var trabajo = castillo
    method encontrar(elemento) {
        trabajo = elemento
        if(elemento == castillo){
            recolectado = recolectado + elemento.defensa() / 5
            elemento.subir()
        }
        if(elemento == tipa){
            recolectado = recolectado + elemento.altura()*2
            elemento.crecer()
        }else{
            recolectado = recolectado + 15
        }
    }
    method esFeliz() {
        return recolectado >= 50 || trabajo.altura()>=10 
    }
}
//`floki` tiene una de estas armas.
object ballesta {//arma
    var usos = 10
    method estaCargada() {
        return usos > 0
    }
    method potencia() {
        return 4
    }
    method usos() {
        return usos
    }
    method gastarUsos() {
        usos = usos - 1
    }
}
object jabalina {//arma
    var usos = 1
    method estaCargada(){
           return usos > 0
    }
    method potencia() {
        return 30
    }
    //method usos() {
    //    return usos
    //}
    method gastarUsos() {
        usos = usos - 1
    }
}
object castillo {//castillo - elemento
    var defensa = 150
    method defensa() {
       return defensa
    }
    method danio(ataqueDe) {
        defensa = defensa - ataqueDe
    }
    method subir() {
        if(defensa < 200){
            defensa = defensa + 20
        }
        if(defensa > 200){
            defensa = 200
        }
    }
    method altura() {
        return 20
    }
}
object aurora {//vaca - elemento
    var estaViva = true
    var defensa = 10
    method defensa() {
       return defensa
    }
    method danio(ataqueDe) {
        if(ataqueDe > 10){
            estaViva = false
            defensa = 0
        }
    }
    /*method conVida() {
        return estaViva
    }*/
    method altura() {
        return 1
    }
}
object tipa {//arbol - elemento
    var mide = 8
    var defensa = 0
    method defensa() {
       return 30//defensa
    }
    method danio(ataqueDe) {
        defensa = defensa - ataqueDe*0
    }
    method altura() {
        return mide
    }
    method crecer() {
        mide = mide + 1
    }
}