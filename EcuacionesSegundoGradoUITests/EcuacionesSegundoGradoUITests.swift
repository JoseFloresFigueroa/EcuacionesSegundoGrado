//
//  EcuacionesSegundoGradoUITests.swift
//  EcuacionesSegundoGradoUITests
//
//  Created by user194083 on 8/27/21.
//

import XCTest
@testable import EcuacionesSegundoGrado

class EcuacionesSegundoGradoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testInvalidCoefA() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let txtCoefA = app.textFields["coefATextField"]
        txtCoefA.tap()
        txtCoefA.typeText("0")
        let txtCoefB = app.textFields["coefBTextField"]
        txtCoefB.tap()
        txtCoefB.typeText("1")
        let txtCoefC = app.textFields["coefCTextField"]
        txtCoefC.tap()
        txtCoefC.typeText("1")
        let txtRaizUno = app.textFields["raizUnoTextField"]
        let txtRaizDos = app.textFields["raizDosTextField"]
        app.staticTexts["a:"].tap()
        app.staticTexts["Resolver"].tap()
        
        XCTAssertEqual(txtRaizUno.value as! String, "")
        XCTAssertEqual(txtRaizDos.value as! String, "")
            
        
    }

}
