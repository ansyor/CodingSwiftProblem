////
//  CamelCase.swift
//  CodingProblemSwift
//
//  Created by Iqbal Ansyori on 3/3/18.
//  Copyright © 2018 Iqbal Ansyori. All rights reserved.
//

import Foundation

/**
Alice wrote a sequence of words in CamelCase as a string of letters, , having the following properties:

It is a concatenation of one or more words consisting of English letters.
All letters in the first word are lowercase.
For each of the subsequent words, the first letter is uppercase and rest of the letters are lowercase.
Given , print the number of words in  on a new line.

- Sample Input:
```
saveChangesInTheEditor
```

- Sample Output:
```
5
```

*/

class CamelCase: Solver {
	
	func solve() {
		
		let string = readLine()!
		
		var countWords: Int = 0
		
		if string.first! < "a" {
			countWords = 0
		} else {
			countWords = 1
		}
		
		for char in string {
			
			if char < "a" {
				countWords += 1
			}
		}
		
		print(countWords)
	}
}

