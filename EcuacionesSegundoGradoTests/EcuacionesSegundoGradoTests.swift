//
//  EcuacionesSegundoGradoTests.swift
//  EcuacionesSegundoGradoTests
//
//  Created by user194083 on 8/27/21.
//

import XCTest
@testable import EcuacionesSegundoGrado

class EcuacionesSegundoGradoTests: XCTestCase {

    let resolverEcuacion = ResolucionEcuacion()
    
    func testRealSolutions() throws{
        // Given
        let input = Ecuacion(a: 1, b: -5, c: 6, r1: "", r2: "")
        
        // When
        let result = resolverEcuacion.resolver(ecuacion: input)
        
        // Then
        let expectedR1 = "3.00"
        let expectedR2 = "2.00"
        XCTAssertEqual(result.raizUno, expectedR1)
        XCTAssertEqual(result.raizDos, expectedR2)
    }
    
    func testComplexSolutions() throws{
            // Given
            let input = Ecuacion(a: 1, b: 1, c: 1, r1: "", r2: "")
            
            // When
            let result = resolverEcuacion.resolver(ecuacion: input)
            
            // Then
            let expectedR1 = "-0.50 + 0.87i"
            let expectedR2 = "-0.50 - 0.87i"
            XCTAssertEqual(result.raizUno, expectedR1)
            XCTAssertEqual(result.raizDos, expectedR2)
        
    }

}
