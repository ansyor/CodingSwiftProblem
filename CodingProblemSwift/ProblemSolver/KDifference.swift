//
//  KDifference.swift
//  CodingProblemSwift
//
//  Created by Iqbal Ansyori on 3/8/18.
//  Copyright © 2018 Iqbal Ansyori. All rights reserved.
//

import Foundation

/**

Given N numbers , [N<=10^5] we need to count the total pairs of numbers that have a difference of K. [K>0 and K<1e9]

Input Format: 1st line contains N & K (integers). 2nd line contains N numbers of the set. All the N numbers are assured to be distinct. Output Format: One integer saying the no of pairs of numbers that have a diff K.

- Sample Input:
```
5 2 1 5 3 4 2
```

Sample Output:
```
3
```

*/

final class KDifference: Solver {
	
	func solve() {
		
		var numbers: [Int] = []
		
		let string = readLine()!
		let num = Int(readLine()!)!
		let numberString = string.split(separator: " ")
		
		for number in numberString {
			
			let numberToAppend = Int(number)!
			numbers.append(numberToAppend)
		}
		
		let kDiff = kDifference(a: numbers, k: num)
		print(kDiff)
		
	}
	
	func kDifference(a: [Int], k: Int) -> Int {
	
		var count = 0
	
		let arrayCount = a.count
	
		let aSorted = a.sorted()
	
		for index in 0...arrayCount-1 {
	
			for secondIndex in index...arrayCount-1 {
	
				if secondIndex == arrayCount-1 {
					break
				}
				
				if (abs(aSorted[index] - aSorted[secondIndex+1]) == (k)) {
					count += 1
				}
			}
	
		}
	
		return count
	
	}
	
	func kDifference2(a: [Int], k: Int) -> Int {
	
		var count = 0
	
		let arrayCount = a.count
	
		let aSorted = a.sorted()
	
		for index in 0...arrayCount-1 {
	
			let toSearch = aSorted[index] + k
	
			if (aSorted.contains(toSearch)) {
				count += 1
			}
		}
	
		return count
	
	}
}
