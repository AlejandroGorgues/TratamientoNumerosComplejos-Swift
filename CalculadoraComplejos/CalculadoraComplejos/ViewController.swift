//
//  ViewController.swift
//  CalculadoraComplejos
//
//  Created by XCode on 23/10/18.
//  Copyright © 2018 XCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var c1I: UITextField!
    @IBOutlet var c1R: UITextField!
    @IBOutlet var c2I: UITextField!
    @IBOutlet var c2R: UITextField!
    @IBOutlet weak var operacion: UISegmentedControl!
    @IBOutlet weak var resultadoI: UITextField!
    @IBOutlet weak var resultadoR: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
        
        
    }


    @IBAction func operar(){
        let c1I = Double(self.c1I.text!);
        let c1R = Double(self.c1R.text!);
        let c2I = Double(self.c2I.text!);
        let c2R = Double(self.c2R.text!);
        
        let complejo1 = Complex(r: c1R!, i: c1I!)
        let complejo2 = Complex(r: c2R!, i: c2I!)
        
        

        
        switch operacion.selectedSegmentIndex
        {
        case 0:
            let complejo: Complex = complejo1+complejo2
            resultadoI.text = "\(complejo.i)";
            resultadoR.text = "\(complejo.r)";
            alerta(complejo: complejo)
        case 1:
            let complejo: Complex = complejo1-complejo2
            resultadoI.text = "\(complejo.i)";
            resultadoR.text = "\(complejo.r)";
            alerta(complejo: complejo)
        case 2:
            let complejo: Complex = complejo1*complejo2
            resultadoI.text = "\(complejo.i)";
            resultadoR.text = "\(complejo.r)";
            alerta(complejo: complejo)
        case 3:
            let complejo: Complex = complejo1/complejo2
            resultadoI.text = "\(complejo.i)";
            resultadoR.text = "\(complejo.r)";
            alerta(complejo: complejo)
        default :
            break
        }
        
    }
    
    @IBAction func alerta(){
        let I = Double(self.resultadoI.text!);
        let R = Double(self.resultadoR.text!);
        
        let complex = Complex(r: I!, i: R!)
        let alert = UIAlertController(title: "Forma polar", message: " Mod: \(complex.mod) \n  Arg: \(complex.i)",
                                      preferredStyle: UIAlertControllerStyle.alert)
        let cancel = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func upSwipe(_ sender: Any) {
        let c1I = Double(self.c1I.text!);
        let c1R = Double(self.c1R.text!);
        let c2I = Double(self.c2I.text!);
        let c2R = Double(self.c2R.text!);
        
        let complejo1 = Complex(r: c1R!, i: c1I!)
        let complejo2 = Complex(r: c2R!, i: c2I!)
        let complejo: Complex = complejo1+complejo2
        resultadoI.text = "\(complejo.i)";
        resultadoR.text = "\(complejo.r)";
        alerta(complejo: complejo)
    }
    
    @IBAction func downSwipe(_ sender: Any) {
        let c1I = Double(self.c1I.text!);
        let c1R = Double(self.c1R.text!);
        let c2I = Double(self.c2I.text!);
        let c2R = Double(self.c2R.text!);
        
        let complejo1 = Complex(r: c1R!, i: c1I!)
        let complejo2 = Complex(r: c2R!, i: c2I!)
        let complejo: Complex = complejo1-complejo2
        resultadoI.text = "\(complejo.i)";
        resultadoR.text = "\(complejo.r)";
        alerta(complejo: complejo)
        
    }
    
    @IBAction func leftSwipe(_ sender: Any) {
        let c1I = Double(self.c1I.text!);
        let c1R = Double(self.c1R.text!);
        let c2I = Double(self.c2I.text!);
        let c2R = Double(self.c2R.text!);
        
        let complejo1 = Complex(r: c1R!, i: c1I!)
        let complejo2 = Complex(r: c2R!, i: c2I!)
        let complejo: Complex = complejo1*complejo2
        resultadoI.text = "\(complejo.i)";
        resultadoR.text = "\(complejo.r)";
        alerta(complejo: complejo)
        
        
    }
    
    @IBAction func rightSwipe(_ sender: Any) {
        let c1I = Double(self.c1I.text!);
        let c1R = Double(self.c1R.text!);
        let c2I = Double(self.c2I.text!);
        let c2R = Double(self.c2R.text!);
        
        let complejo1 = Complex(r: c1R!, i: c1I!)
        let complejo2 = Complex(r: c2R!, i: c2I!)
        let complejo: Complex = complejo1/complejo2
        resultadoI.text = "\(complejo.i)";
        resultadoR.text = "\(complejo.r)";
        alerta(complejo: complejo)
        
        
    }
    
    func alerta(complejo: Complex){
        
        let alert = UIAlertController(title: "Forma polar", message: "Mod: \(complejo.mod) \n  Arg: \(complejo.i)" ,
            preferredStyle: UIAlertControllerStyle.alert)
        let cancel = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
}





extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}

