////
////  StrongPassword.swift
////  CodingProblemSwift
////
////  Created by Iqbal Ansyori on 3/3/18.
////  Copyright © 2018 Iqbal Ansyori. All rights reserved.
////
//
//import Foundation
//
//let number = Int(readLine()!)!
//
//let password = readLine()!
//
//let numbers = "0123456789"
//let lower_case = "abcdefghijklmnopqrstuvwxyz"
//let upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
//let special_characters = "!@#$%^&*()-+"
//
//var numberArray: [Character] = []
//var lowerCaseArray: [Character] = []
//var upperCaseArray: [Character] = []
//var specialCharacters: [Character] = []
//
//for char in numbers {
//	numberArray.append(char)
//}
//
//for char in lower_case {
//	lowerCaseArray.append(char)
//}
//
//for char in upper_case {
//	upperCaseArray.append(char)
//}
//
//for char in special_characters {
//	specialCharacters.append(char)
//}
//
//var dataPassword: [(String, Bool)] = []
//dataPassword.append((numbers, false))
//dataPassword.append((lower_case, false))
//dataPassword.append((upper_case, false))
//dataPassword.append((special_characters, false))
//
//for char in password {
//	
//	if numberArray.contains(char) {
//		dataPassword[0].1 = true
//	} else if lowerCaseArray.contains(char) {
//		dataPassword[1].1 = true
//	} else if upperCaseArray.contains(char) {
//		dataPassword[2].1 = true
//	} else {
//		dataPassword[3].1 = true
//	}
//}
//
//let minNumberCharsToAdd = 6 - number
//
//var countValid = 0
//
//for (_, isValid) in dataPassword {
//	
//	if isValid {
//		countValid += 1
//	}
//}
//
//let minAddValid = 4 - countValid
//
//print(max(minNumberCharsToAdd, minAddValid))

