//
//  main.swift
//  Swift高阶函数
//
//  Created by Mr.Lee on 16/6/26.
//  Copyright © 2016年 Mr.Lee. All rights reserved.
//

import Foundation

func square(a: Float) -> Float {
    return a * a
}

func cube(a: Float) -> Float {
    return a * a * a
}

func averageSumOfSquares(a a: Float, b: Float) -> Float {
    return (square(a) + square(b)) / 2
}

func averageSumOfCobes(a a: Float, b: Float) -> Float {
    return (cube(a) + cube(b)) / 2
}

var m = averageSumOfSquares(a: 2, b: 3)
var n = averageSumOfCobes(a: 2, b: 3)

print("m=\(m) && n=\(n)\n")


func average(a: Float,_ b: Float,_ fn: (Float -> Float)) -> Float {
    return (fn(a) + fn(b)) / 2
}

let x = average(2, 3, {(a: Float) ->Float in return a * a })
let y = average(2, 3, {(a: Float) ->Float in return a * a * a })

print("x=\(x) && y=\(y)\n")

let a = average(2, 3, {(a: Float) ->Float in a * a})
print(a)

let b = average(2, 3, { a in a * a })
print(b)

let c = average(2, 3, { $0 * $0})
print(c)


let arr_1 = [11, 12, 13, 14]



let arr_2 = arr_1.map({$0*$0})

print(arr_2)

let arr_3 = [1, 2, 3, 4, 5]
let d = arr_3.map({"\($0)ff"})
print(d)

let e = try! arr_3.filter({ (a) -> Bool in
    return a > 6
}) catch let err as NSError {
    print(err)
}

print(e)





















