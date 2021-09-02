//
//  ViewController.swift
//  EcuacionesSegundoGrado
//
//  Created by user194083 on 8/27/21.
//

import UIKit

class ViewController: UIViewController {
    let resolverEcuacion = ResolucionEcuacion()
    @IBOutlet weak var txtCoefA: UITextField!
    @IBOutlet weak var txtCoefB: UITextField!
    @IBOutlet weak var txtCoefC: UITextField!
    @IBOutlet weak var txtRaizUno: UITextField!
    @IBOutlet weak var txtRaizDos: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Looks for single or multiple taps.
             let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
            //tap.cancelsTouchesInView = false

            view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }


    @IBAction func resolverEcuacion(_ sender: Any) {
        txtRaizUno.text = ""
        txtRaizDos.text = ""
        if let aValue = txtCoefA.text{
            if let bValue = txtCoefB.text{
                if let cValue = txtCoefC.text{
                    if !aValue.isEmpty && Float(aValue) != 0 && !bValue.isEmpty && !aValue.isEmpty{
                        let raizValue = resolverEcuacion.resolver(ecuacion: Ecuacion(a: Float(aValue)!, b: Float(bValue)!, c: Float(cValue)!, r1: "", r2: ""))
                        txtRaizUno.text = String(raizValue.raizUno)
                        txtRaizDos.text = String(raizValue.raizDos)
                    }
                    else{
                        showAlert()
                    }
                }
            }
        }
    }
    @IBAction func showAlert() {
        let alertController = UIAlertController(title: "Aviso", message:
            "No es una ecuacion de segundo grado", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
}

