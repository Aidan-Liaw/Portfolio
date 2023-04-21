//
//  GraphTemplateXMLParser.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 29/5/2022.
//

import Foundation
import Swift

extension GraphTemplateEditorEnvironment : XMLParserDelegate {
	
//	func IDToArray() -> [String : String]? {
//		switch currentDictionary {
//			case "preset":
//				return curveAttribute
//			case "variable":
//				return variableAttribute
//			case "equation":
//				return equation
//			default:
//				return nil
//		}
//	}
//
//	func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
//
//		//The current parsed tag is presented as `elementName` in this function
//		switch elementName {
//			case "preset":
//				curveAttribute = [String : String]()
//				currentDictionary = "preset"
//				break
//			case "variable":
//				variableAttribute = [String : String]()
//				currentDictionary = "variable"
//				break
//			case "equation":
//				equation = [String : String]()
//				currentDictionary = "equation"
//				break
//			default:
//				currentElement = elementName
//				break
//		}
//	}
//
//	func parser(_ parser: XMLParser, foundCharacters string: String) {
//
//		//The value of current parsed tag is presented as `string` in this function
//		if !string.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
//			if (IDToArray()?[currentElement] == nil) {
//				switch IDToArray() {
//					case curveAttribute:
//						curveAttribute.updateValue(string, forKey: currentElement)
//						break
//					case variableAttribute:
//						variableAttribute.updateValue(string, forKey: currentElement)
//						break
//					case equation:
//						equation.updateValue(string, forKey: currentElement)
//						break
//					default:
//						break
//				}
//			}
//		}
//	}
//
//	func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
//
//		//The closing tag is presented as `elementName` in this function
//		switch elementName {
//			case "preset":
//				customCurveAttributes.append(curveAttribute)
//				currentDictionary = "preset"
//				break
//			case "variable":
//				customVariableAttributes.append(variableAttribute)
//				currentDictionary = "variable"
//				break
//			case "equation":
//				customEquations.append(equation)
//				currentDictionary = "equation"
//				break
//			default:
//				break
//		}
//	}
//
//	func parserDidEndDocument(_ parser: XMLParser) {
//		//Called when the parsing is complete
//		parsingCompleted()
//	}
//
//	func parsingCompleted() {
//		self.customCurveAttributes.forEach { attribute in print("Curve Attribute: \(attribute)") }
//		self.customVariableAttributes.forEach { variable in print("Variable: \(variable)") }
//		self.customEquations.forEach { equation in print("Equation: \(equation)") }
//
//
////		self.updateCustomCurveSettingsPane()
//	}
//
//	func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
//		NSLog("ERROR AT \("\n") COLUMN: \(parser.columnNumber), \("\n") ROW: \(parser.lineNumber)")
//	}
	
}
