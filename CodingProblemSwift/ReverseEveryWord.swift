////
////  ReverseEveryWord.swift
////  CodingProblemSwift
////
////  Created by Iqbal Ansyori on 2/27/18.
////  Copyright © 2018 Iqbal Ansyori. All rights reserved.
////
//
//import Foundation
//
//let stringToReverse = "Lets started to do reverse word"
//
//func reverseEveryWord(string: String) -> String {
//
//	var wordToReverse: String = ""
//
//	var reversedWords: String = ""
//	
//	for char in string {
//
//		let string = String(char)
//		wordToReverse += string
//
//		if string == " " {
//
//			var reversedWord: String = ""
//
//			for index in 0...wordToReverse.count - 1 {
//
//				let newIndex = wordToReverse.count - index - 1
//				let index2 = wordToReverse.index(wordToReverse.startIndex, offsetBy: newIndex)
//				reversedWord += String(wordToReverse[index2])
//
//				//print(reversedWord)
//			}
//
//			reversedWords += reversedWord
//
//			wordToReverse = ""
//		}
//	}
//
//	let charA: Character = "A"
//	let charB: Character = "a"
//
//	print("characters: \(charA > charB)")
//
//	return reversedWords
//}
//
//print(reverseEveryWord(string: stringToReverse))

