//
//  Exponentiation.swift
//  CodingProblemSwift
//
//  Created by Iqbal Ansyori on 3/3/18.
//  Copyright © 2018 Iqbal Ansyori. All rights reserved.
//

import Foundation

/**

Implement exponentiation operator (^) and it will takes two input, base and exp (base ^ exp)

- Input:
```
2
8
```

- Output:
```
256
```

*/

final class Exponentiation: Solver {
	
	func solve() {
		
		let base = Int(readLine()!)!
		let exp = Int(readLine()!)!
		
		let result = pow3(base, exp)
		print(result)
	}
	
	func pow(_ base: Int, _ exp: Int) -> Int {
		
		var result = 1
		
		for _ in 1...exp {
			result *= base
		}
		
		return result
	}
	
	func pow2(_ base: Int, _ exp: Int) -> Int {
		
		var power = exp
		var base = base
		
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
	
	func pow3(_ base: Int, _ exp: Int) -> Int {
		
		if exp == 0 {
			return 1
		} else if exp % 2 == 1 {
			
			let result = base * pow3(base, exp - 1)
			return result
		} else {
			let result = pow3(base, exp/2)
			return result * result
		}
	}
	
}
