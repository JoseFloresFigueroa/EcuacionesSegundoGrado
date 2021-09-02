//
//  ResolucionEcuacion.swift
//  EcuacionesSegundoGrado
//
//  Created by user194083 on 8/31/21.
//

import Foundation

public class ResolucionEcuacion{
    public func resolver(ecuacion: Ecuacion) -> Ecuacion{
        let a = ecuacion.coefA
        let b = ecuacion.coefB
        let c = ecuacion.coefC
        var negativo = false
        var solucion1 = ""
        var solucion2 = ""
        var discriminante = b*b-4*a*c
        if discriminante<0 {
            negativo = true
            discriminante *= -1
        }
        let raiz = sqrtf(discriminante)
        if negativo == true{
            let real = String(format:"%.2f",-b/(2*a))
            let imaginario = String(format:"%.2f",raiz/(2*a))+"i"
            solucion1 = real + " + " + imaginario
            solucion2 = real + " - " + imaginario
        }
        else{
            solucion1 = String(format:"%.2f",(-b+raiz)/(2*a))
            solucion2 = String(format:"%.2f",(-b-raiz)/(2*a))
        }
        return Ecuacion(a: a, b: b, c: c, r1: solucion1, r2: solucion2)
    }
}
