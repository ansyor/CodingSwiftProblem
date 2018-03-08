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

