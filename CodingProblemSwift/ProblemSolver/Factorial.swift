//
//  Factorial.swift
//  CodingProblemSwift
//
//  Created by Iqbal Ansyori on 2/10/18.
//  Copyright © 2018 Iqbal Ansyori. All rights reserved.
//

import Foundation

/**

Calculate the factorial value of an `Int`.

- Input:
```
4
```

- Output:
```
24
```

*/

final class Factorial: Solver {
	
	func solve() {
		
		let factorial = Int(readLine()!)!
		
		var factorialResult: Int = 1
		
		if factorial == 0 {
			
			print(1)
			
		} else {
			
			for number in 1...factorial {
				
				factorialResult *= number
			}
			
			print(factorialResult)
		}
	}
	
}

let a = [1, 5, 3, 4, 2]
let k = 2

//func kDifference(a: [Int], k: Int) -> Int {
//
//	var count = 0
//
//	let arrayCount = a.count
//
//	let aSorted = a.sorted()
//
//	for index in 0...arrayCount-1 {
//
//		for secondIndex in index...arrayCount-1 {
//
//			if secondIndex == arrayCount-1 {
//				break
//			}
//
//			let
//
//			if (abs(aSorted[index] - aSorted[secondIndex+1]) == (k)) {
//				count += 1
//			}
//		}
//
//	}
//
//	return count
//
//}

//func kDifference(a: [Int], k: Int) -> Int {
//
//	var count = 0
//
//	let arrayCount = a.count
//
//	let aSorted = a.sorted()
//
//	for index in 0...arrayCount-1 {
//
//		let toSearch = aSorted[index] + k
//		
//		if (aSorted.contains(toSearch)) {
//			count += 1
//		}
//	}
//
//	return count
//
//}
//
//print(kDifference(a: a, k: k))

