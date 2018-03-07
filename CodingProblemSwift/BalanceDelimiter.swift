
//
//  BalanceDelimiter.swift
//  CodingProblemSwift
//
//  Created by Iqbal Ansyori on 2/9/18.
//  Copyright © 2018 Iqbal Ansyori. All rights reserved.
//

import Foundation

//var stack: [Character] = []
//
//func isBalance(string: String) -> String {
//
//	for (_, char) in string.enumerated() {
//
//		print(char)
//
//		switch char {
//
//		case "{", "[", "(":
//
//			stack.append(char)
//
//		case "}":
//			guard let last = stack.last else {
//				return "False"
//			}
//			guard last == "{" else {
//				return "False"
//			}
//			stack.removeLast()
//
//		case "]":
//			guard let last = stack.last else {
//				return "False"
//			}
//
//			guard last == "[" else {
//				return "False"
//			}
//
//			stack.removeLast()
//		case ")":
//
//			guard let last = stack.last else {
//				return "False"
//			}
//			guard last == "(" else {
//				return "False"
//			}
//			stack.removeLast()
//
//		default:
//			continue
//		}
//
//	}
//
//	if stack.isEmpty {
//		return "True"
//	} else {
//		return "False"
//	}
//
//
//}
//
//var string: String = ""
//
//while let new = readLine() {
//
//	let isBalanced = isBalance(string: new)
//	print(isBalanced)
//}
//
//
