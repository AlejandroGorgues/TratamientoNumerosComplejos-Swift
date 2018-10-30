//
//  Complex.swift
//  CalculadoraComplejos
//
//  Created by XCode on 23/10/18.
//  Copyright © 2018 XCode. All rights reserved.
//

import UIKit


class Complex{
    var r = 0.0
    var i = 0.0
    
    init (r:Double, i:Double){
        self.r = r
        self.i = i
    }
    
    init (mod:Double, arg:Double){
        self.r = mod*cos(arg)
        self.i = mod*sin(arg)
    }
    
    var mod: Double{
        get{
            return sqrt(pow(r, 2) + pow(i, 2))
        }
    }
    
    var arg: Double{
        return atan2(i,r)
    }
}

func +(num1:Complex,num2:Complex) -> Complex {
    return (Complex(r: num1.r+num2.r, i: num1.i+num2.i))
}

func -(num1:Complex,num2:Complex) -> Complex {
    return (Complex(r: num1.r-num2.r, i: num1.i-num2.i))
}

func /(num1:Complex,num2:Complex) -> Complex {
    return (Complex(mod: num1.mod/num2.mod,arg: num1.arg-num2.arg))
}

func *(num1:Complex,num2:Complex) -> Complex {
    
    return (Complex(r: num1.r*num2.r-num1.i*num2.i, i: num1.r*num2.i+num1.i*num2.r))
}

/*let complejo1 = Complex(r: 2.0, i: 5.0)
let complejo2 = Complex(r: 4.0, i: 7.0)

let resultadoSuma = complejo1+complejo2
print("La parte real de la suma es: \(resultadoSuma.r) y la parte imaginaria es: \(resultadoSuma.i)")
let resultadoResta = complejo1-complejo2
print("La parte real de la resta es: \(resultadoResta.r) y la parte imaginaria es: \(resultadoResta.i)")
let resultadoMult = complejo1*complejo2
print("La parte real de la multiplicación es: \(resultadoMult.r) y la parte imaginaria es: \(resultadoMult.i)")
let resultadoDiv = complejo1/complejo2
print("La parte real de la división es: \(resultadoDiv.r) y la parte imaginaria es: \(resultadoDiv.i)")*/

