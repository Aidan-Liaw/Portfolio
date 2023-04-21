//
//  GraphTemplateEditorEnvironment.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 29/5/2022.
//

import Cocoa

class GraphTemplateEditorEnvironment: NSViewController, NSTextViewDelegate {
	
//	var curveAttribute : [String : String] = [String : String]()
//	var customCurveAttributes : [[String : String]] = [[String : String]]()
//
//	var variableAttribute : [String: String] = [String: String]()
//	var customVariableAttributes : [[String: String]] = [[String: String]]()
//
//	var equation : [String : String] = [String : String]()
//	var customEquations : [[String : String]] = [[String : String]]()
	
	var customCurveVariable : CustomCurve = CustomCurve()
	var customMultiCurveCustomCurve : MultiCurveCustomCurve = MultiCurveCustomCurve()
	
	var currentDictionary : String = ""
	var currentElement : String = ""
	
	
	@IBOutlet var GraphTemplateEditorEnvironmentView: NSView!
	
	@IBOutlet var XMLEditorTextView: NSTextView!
	
	var XMLGraphTemplateParser : XMLParser!
	
	override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
		XMLEditorTextView.delegate = self
    }
	
	var decodedText : graphPreset = graphPreset.init()
	
	func textDidChange(_ notification: Notification) {
		let JSONData : Data = XMLEditorTextView.textStorage?.string.data(using: .utf8) ?? Data.init()
		
		do {
			let tempVar = try JSONDecoder().decode(graphPreset?.self, from: JSONData)
			print(tempVar!)
			decodedText = tempVar!
		} catch let DecodingError.dataCorrupted(context) {
			print("\n")
			print(context)
		} catch let DecodingError.keyNotFound(key, context) {
			print("\n")
			print("Key '\(key)' not found:", context.debugDescription)
			print("codingPath:", context.codingPath)
		} catch let DecodingError.valueNotFound(value, context) {
			print("\n")
			print("Value '\(value)' not found:", context.debugDescription)
			print("codingPath:", context.codingPath)
		} catch let DecodingError.typeMismatch(type, context)  {
			print("\n")
			print("Type '\(type)' mismatch:", context.debugDescription)
			print("codingPath:", context.codingPath)
		} catch {
			print("\n")
			print("error: ", error)
		}
		
		
		
//		XMLGraphTemplateParser.delegate = self
//
//		print(XMLEditorTextView.textStorage?.string.data(using: .utf8) ?? Data.init())
//		XMLGraphTemplateParser = XMLParser.init(data: XMLEditorTextView.textStorage?.string.data(using: .utf8) ?? Data.init())
//		XMLGraphTemplateParser.parse()
//		print(XMLGraphTemplateParser.parse())
//
//
//		print(String(data: JSONData, encoding: .utf8 )!)
//
//		if (self.customCurveAttributes.isEmpty) {
//			NSLog("customCurveAttributes is empty")
//		} else {
//			self.customCurveAttributes.forEach { attr in print(attr) }
//		}
//
//		if (self.customVariableAttributes.isEmpty) {
//			NSLog("customVariableAttributes is empty")
//		} else {
//			self.customVariableAttributes.forEach { attr in print(attr) }
//		}
//
//		if (self.customEquations.isEmpty) {
//			NSLog("customVariableAttributes is empty")
//		} else {
//			self.customEquations.forEach { attr in print(attr) }
//		}
	}
	
//	func updateCustomCurveSettingsPane() {}
	
}
