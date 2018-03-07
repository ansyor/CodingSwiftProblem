
//
//  BalanceDelimiter.swift
//  CodingProblemSwift
//
//  Created by Iqbal Ansyori on 2/9/18.
//  Copyright © 2018 Iqbal Ansyori. All rights reserved.
//

import Foundation

/**
Reference: http://bit.ly/BalanceDelimiters

For this question, you will parse a string to determine if it contains only "balanced delimiters."

A balanced delimiter starts with an opening character ((, [, {), ends with a matching closing character (), ], } respectively), and has only other matching delimiters in between. A balanced delimiter may contain any number of balanced delimiters.

- Input:
```
([{}])
```

- Output:
```
True
```

*/

final class BalanceDelimiter: Solver {
	
	func solve() {
		
		var stack: [Character] = []
		
		func isBalance(string: String) -> String {
			
			for (_, char) in string.enumerated() {
				
				print(char)
				
				switch char {
					
				case "{", "[", "(":
					
					stack.append(char)
					
				case "}":
					guard let last = stack.last else {
						return "False"
					}
					guard last == "{" else {
						return "False"
					}
					stack.removeLast()
					
				case "]":
					guard let last = stack.last else {
						return "False"
					}
					
					guard last == "[" else {
						return "False"
					}
					
					stack.removeLast()
				case ")":
					
					guard let last = stack.last else {
						return "False"
					}
					guard last == "(" else {
						return "False"
					}
					stack.removeLast()
					
				default:
					continue
				}
				
			}
			
			if stack.isEmpty {
				return "True"
			} else {
				return "False"
			}
			
			
		}
		
		while let new = readLine() {
			
			let isBalanced = isBalance(string: new)
			print(isBalanced)
		}
	}
	
}
