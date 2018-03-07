//
//  Exponent.swift
//  CodingProblemSwift
//
//  Created by Iqbal Ansyori on 3/3/18.
//  Copyright © 2018 Iqbal Ansyori. All rights reserved.
//

import Foundation

func expo(_ bas: Int, _ pow: Int) -> Int {

	var result = 1

	for _ in 1...pow {
		result *= bas
	}

	return result
}

func expo2(_ bas: Int, _ pow: Int) -> Int {

	var power = pow
	var base = bas

	var result = 1

	while (power != 0){
		if (power%2 == 1){
			result *= base
		}
		power /= 2
		base *= base
	}

	return result
}

func expo3(_ bas: Int, _ pow: Int) -> Int {

	if pow == 0 {
		return 1
	} else if pow % 2 == 1 {

		let result = bas * expo3(bas, pow - 1)
		return result
	} else {
		let result = expo3(bas, pow/2)
		return result * result
	}
}

print("expo: \(expo(2, 16))")
print("expo2: \(expo2(2, 16))")
print("expo3: \(expo3(2, 16))")


