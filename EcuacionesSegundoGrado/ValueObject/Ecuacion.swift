//
//  Ecuacion.swift
//  EcuacionesSegundoGrado
//
//  Created by user194083 on 8/31/21.
//

import Foundation

public class Ecuacion{
    public let coefA : Float
    public let coefB : Float
    public let coefC : Float
    public let raizUno: String
    public let raizDos: String
    
    public init(a: Float, b: Float, c: Float, r1: String, r2: String){
        self.coefA = a
        self.coefB = b
        self.coefC = c
        self.raizUno = r1
        self.raizDos = r2
    }
    
}
