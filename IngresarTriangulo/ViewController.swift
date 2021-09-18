//
//  ViewController.swift
//  IngresarTriangulo
//
//  Created by Angelo Contreras on 18/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfLado1: UITextField!
    
    @IBOutlet weak var tfLado2: UITextField!
    
    @IBOutlet weak var tfLado3: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tfLado1.text = "0"
        self.tfLado2.text = "0"
        self.tfLado3.text = "0"
    }
    
    
    @IBAction func btnAceptar_OnClick(_ sender: Any) {
        
        
        var Lado1 : Int = 0
        var Lado2 : Int = 0
        var Lado3 : Int = 0
        var Mensaje : String = "Triangulo Correcto"
        
        Lado1 = Int(self.tfLado1.text ?? "") ?? 0
        Lado2 = Int(self.tfLado2.text ?? "") ?? 0
        Lado3 = Int(self.tfLado3.text ?? "") ?? 0
        
        if (Lado1 <= 7 && Lado1 > 0){
            if(Lado2 >= 2 && Lado2 <= 6){
                if(Lado3 >= 4){
                    let alert = UIAlertController(title: "Resultado", message: "\(Mensaje)", preferredStyle: UIAlertController.Style.alert)
                    
                    alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
                    
                    self.present(alert, animated: true, completion: nil)
                }else{
                    Mensaje = "Lado 3 errado"
                    
                    let alert = UIAlertController(title: "Resultado", message: "\(Mensaje)", preferredStyle: UIAlertController.Style.alert)
                    
                    alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            }else{
                Mensaje = "Lado 2 errado"
                let alert = UIAlertController(title: "Resultado", message: "\(Mensaje)", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
            }
        }else{
            Mensaje = "Lado 1 errado"
            let alert = UIAlertController(title: "Resultado", message: "\(Mensaje)", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
        
        
        
    }
    

}

