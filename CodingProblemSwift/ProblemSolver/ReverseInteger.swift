////
////  ReverseInteger.swift
////  CodingProblemSwift
////
////  Created by Iqbal Ansyori on 2/23/18.
////  Copyright © 2018 Iqbal Ansyori. All rights reserved.
////
//
//import Foundation
//
//func reverse(_ x: Int) -> Int {
//
//	var intToReverse: Int = x
//	var isNegative: Bool = false
//
//	if (intToReverse < 0) {
//		isNegative = true
//	}
//
//	intToReverse =  abs(intToReverse)
//	var arrayInt: [Int] = []
//
//	while(intToReverse > 0) {
//
//		let y = intToReverse % 10
//		arrayInt.append(y)
//		intToReverse /= 10
//	}
//
//	var multiplier = 1
//	var number = 0
//
//	for index in 0...arrayInt.count - 1 {
//
//		number += arrayInt[arrayInt.count - 1 - index] * multiplier
//		multiplier *= 10
//	}
//
//	if isNegative {
//		return 0 - number
//	}
//
//	return number
//
//}
//
//let intValue = Int(readLine()!)!
//print(reverse(intValue))

