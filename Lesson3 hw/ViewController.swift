//
//  ViewController.swift
//  Lesson3 hw
//
//  Created by Надя Хроменкова on 30.07.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Результат сложения \(calculateResult(firstSum: 10, secondSum: 5))")
        print("Результат вычитания \(calculateResult(firstSub: 10, secondSub: 5))")
        print("Результат умножения \(calculateResult(firstMul: 10, secondMul: 5))")
        print("Результат деления \(calculateResult(firstDiv: 10, secondDiv: 5))")
        
        print("\(sumFourNum(a: 1234))")
        
        print(exponentiate(x: 2, y: 3))
        
        print(factorial(numb: 3))
    }
    
//  first exercise
    func calculateResult(firstSum: Double, secondSum: Double) {
        print(firstSum + secondSum)
    }
    func calculateResult(firstSub: Double, secondSub: Double) {
        print(firstSub - secondSub)
    }
    func calculateResult(firstMul: Double, secondMul: Double) {
        print(firstMul * secondMul)
    }
    func calculateResult(firstDiv: Double, secondDiv: Double) {
        print(firstDiv / secondDiv)
    }
    
//  second exercise
    func sumFourNum(a: Int) {
        let limit = String(a).count
        if limit == 4 {
            var sum = 0
            var a = a
            for index in 1...limit {
                sum += a % 10
                a = a / 10
            }
            print("Сумма символов \(sum)")
        } else {
            print("Число не из 4 символов")
        }
    }
    
//  third exercise
    func exponentiate(x: Int, y: Int) {
        let result = Int(pow(Double(x), Double(y)))
        print(result)
    }

//  fourth exercise
    func factorial(numb: Int) {
        var result = 1
        var numb = numb
        if numb == 0 {
            result = 1
        } else {
            while numb > 0 {
                result *= numb
                numb -= 1
            }
        }
        
        print(result)
    }
    
}

