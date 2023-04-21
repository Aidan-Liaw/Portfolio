//
//  PresetInterpreter2.swift
//  test3
//
//  Created by Aidan Liaw on 7/2/2022.
//

import Foundation

class PresetInterpreter2 {
	func getDotTxtFileContents (fileName : String) -> String {
		var fileContents = ""
		
		// .desktopDirectory = the user's desktop directory, located when using
		// .userDomainMask = the user's home directory, located when using "cd ~"
		// Look for the file in the user's home directory, which will contain the desktop directory
		var dictionaries = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask)
		
		if (dictionaries.isEmpty) {
			print("Failed to find file.")
		} else {
			repeat {
				let fileURL = dictionaries.removeFirst().appendingPathComponent(fileName)
				
				do {
				 fileContents = try String(contentsOf: fileURL)
				} catch { print("Failed to find file."); fileContents = "" }
				
			} while (!dictionaries.isEmpty && fileContents != "")
		}
		
		return fileContents
	}
	
	func getTokens(testInp : String) -> [String] {
		var tokens : [String] = []
		var tempString : String = ""
		
		// Bellow var is false until the '<' character in <label> is found
		var lookingForName : Bool = false
		
		// Bellow var is true until <label> is found
		var lookingForLabel : Bool = true
		
		// Bellow var is false until the '<' character in </label> is found
		var lookingForEnd : Bool = false
		var isInvalid : Bool = false
		var name : String = ""
		
		for (idx) in testInp {
			if (idx == "<" && lookingForLabel) {
				lookingForName = true
				tempString += String(idx)
			} else if (idx == ">" && lookingForName && lookingForLabel) {
				tempString.forEach { char in
					if (char != "<") { name += String(char) }
				}
				lookingForLabel = false
				lookingForName = false
				tempString += String(idx)
			} else if (idx == "/" && tempString.last == "<" && !lookingForLabel) {
				lookingForEnd = true
				tempString += String(idx)
			} else if (lookingForEnd && idx != ">") {
				if (name.contains(idx)) {
					tempString += String(idx)
				} else {
					isInvalid = true
					break
				}
			} else if (lookingForEnd && idx == ">") {
				tempString += String(idx)
				tokens.append(tempString)
				
				tempString = ""
				lookingForName = false
				lookingForLabel = true
				lookingForEnd = false
				isInvalid = false
				name = ""
			} else if (idx != "\n" && idx != "\r") {
				tempString += String(idx)
			}
		}
		
		//			if (idx == "/") {
		//				tempString += String(idx)
		//				isSlash = true
		//			} else if (idx == ">" && isSlash) {
		//				tempString += String(idx)
		//				isSlash = false
		//				tokens.append(tempString)
		//				tempString = ""
		//			} else if (idx != " " || idx != "\n") {
		//				tempString += String(idx)
		//			}
		
		if (!isInvalid) {
			return tokens
		} else {
			return []
		}
	}
	
	func getTokenIdentity(tokens : [String]) -> [String : String] {
		var tempDict : [String : String] = [:]
		var identity : String = ""
		
		for (idx1, token) in tokens.enumerated() {
			for (idx2, char) in token.enumerated() {
				if (char == "<") {
					
				} else if (char == "!") {
					tempDict[token] = "DOCTYPE"
				} else if (char == "p") {
					
				}
			}
		}
		
		return tempDict
	}
	
		
	var tokenMeaninng : [String : String] = [:]
	
//	while (!testInp.isEmpty) {
//
//	}
}


//func getDotXMLFileContents(fileName : String) -> [String : Any] {
//		var XMLElement = [String: Any]()
//		var XMLElements = [[String: Any]]()
//		var currentElement : String = ""
//		var parser : AnyObject
//		var fileURL : URL
//
//
//		// .desktopDirectory = the user's desktop directory, located when using
//		// .userDomainMask = the user's home directory, located when using "cd ~"
//		// Look for the file in the user's home directory, which will contain the desktop directory
//		var URLDictionaries = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask)
//
//		if (URLDictionaries.isEmpty) {
//			print("Failed to find file.")
//		} else {
//			repeat {
//				fileURL = URLDictionaries.removeFirst().appendingPathComponent(fileName)
//
//				// Returns nil if error occurs
//				parser = XMLParser.init(contentsOf: fileURL) as AnyObject
//
//			} while (!URLDictionaries.isEmpty && !(parser is XMLParser))
//		}
//
//		let fileData = try? Data.init(contentsOf: fileURL)
//		if (fileData == nil) {
//			print("File not found. Try again")
//			return [:]
//		}
//
//		if (!(parser is XMLParser) && fileData != nil) {
//			let parser = XMLParser(data: fileData!)
//			parser.delegate = self
//			parser.parse()
//		}
//
//	}

			
		// <!DOCTYPE graphPreset>
		//<preset>
		//	<name>”Demand”</name>
		//	<equation>Q=a-bP</equation>
		//	<eqType>”Linear”</eqType>
		//	<const>a=100</const>
		//	<const>b=1</const>
		//	<xIs>P</xIs>
		//<yIs>Q</yIs>
		//</preset>
		//
		//
		//Example (Modifiable Terms/Coefficients)
		//
		//<!DOCTYPE graphPreset>
		//<preset>
		//	<name>”Demand<”/name>
		//	<equation>Q=a-bP</equation>
		//	<eqType>”Linear”</eqType>
		//	<var>a=0</var>
		//	<range>a>0</range>
		//	<var>b=0</var>
		//<range>b>0</range>
		//	<xIs>P</xIs>
		//<yIs>Q</yIs>
		//</preset>
		//
		//<advanced>
		//	<range>inf<a<inf</range>
		//<range>inf<b<inf/range>
		//</advanced>

