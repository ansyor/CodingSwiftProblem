//
//  EasyPattern.swift
//  CodingProblemSwift
//
//  Created by Iqbal Ansyori on 2/11/18.
//  Copyright © 2018 Iqbal Ansyori. All rights reserved.
//

import Foundation

/**

Will create some star pattern based on its input

- Input:
```
5
```

- Output:
```
    x
     x
    o x
     o x
x o x o x
 x o
  x o
   x
    x
```

*/

class StarPattern: Solver {
	
	func solve() {
		
		let num = Int(readLine()!)!
		
		var string: [Character] = []
		
		for _ in 1...num {
			string.append(" ")
		}
		
		var strings: [[Character]] = []
		
		var count = 0
		
		for index in 0...num-1 {
			
			if count == 0 {
				string.insert("x", at: num-1)
				
				if let lastString = string.last {
					
					if " " == String(lastString) {
						string.removeLast()
					}
				}
				
				count += 1
				
			} else if count == 1 {
				string.insert(" ", at: num-1)
				count += 1
			} else if count == 2 {
				string.insert("o", at: num-1)
				count += 1
			} else if count == 3 {
				string.insert(" ", at: num-1)
				count += 1
			} else if count == 4 {
				string.insert("x", at: num-1)
				count += 1
			} else if count == 5 {
				string.insert(" ", at: num-1)
				count += 1
			} else if count == 6 {
				string.insert("o", at: num-1)
				count += 1
			} else if count == 7 {
				string.insert(" ", at: num-1)
				count = 0
			}
			
			if index ==  num-1 {
				
				for thirdIndex in 0...num-2 {
					string[thirdIndex] = string[string.count-1-thirdIndex]
				}
			}
			
			strings.append(string)
			
			var stringToPrint = ""
			
			for char in string {
				stringToPrint.append(char)
			}
			
			print(stringToPrint)
		}
		
		var reversedString: [Character] = []
		
		
		func reset() {
			
			reversedString = []
			
			for _ in 0...(2 * num) - 2 {
				
				reversedString.append(" ")
			}
		}
		
		reset()
		
		for index in 1...num-1 {
			
			reset()
			
			let stringToReverse = strings[strings.count - 1 - index]
			
			for index in 0...reversedString.count - 1 {
				
				if index == stringToReverse.count {
					break
				}
				
				reversedString[reversedString.count - 1 - index] = stringToReverse[index]
			}
			
			var stringToPrint = ""
			
			for char in reversedString {
				stringToPrint.append(char)
			}
			
			print(stringToPrint)
			
		}
		

		
	}
}
