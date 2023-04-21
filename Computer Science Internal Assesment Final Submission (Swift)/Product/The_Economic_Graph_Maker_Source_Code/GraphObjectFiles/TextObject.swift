//
//  textObject.swift
//  test3
//
//

import Foundation
import AppKit

// The extension keyword implies that this code body extends the functionality of the TextObject class
// In this scenario, it is adding functions that allow the TextObject class to conform to Equatable through overloading the equality and inequality operators, which it must as TextObject inherits this from its superclass, GraphObject
extension TextObject {
	// Operator overloading the equality operator so thhat TextObjects can be compared using the equality operator
	// "left" represents the object on the left side of the operator, and "right" represents the object on the right side of the operator
	// "-> Bool" means that this function will return a boolean variable
	static func ==(left : TextObject, right : TextObject) -> Bool {
		return (
			left.height == right.height &&
			left.width == right.width &&
			left.objectType == right.objectType &&
			left.parameters == right.parameters &&
			left.useAdvanced == right.useAdvanced &&
			left.textView == right.textView &&
			left.drawLocation == right.drawLocation
		)
	}
	
	// Operator overloading the inequality operator so thhat TextObjects can be compared using the equality operator
	static func !=(left : TextObject, right : TextObject) -> Bool {
		return (
			left.height != right.height ||
			left.width != right.width ||
			left.objectType != right.objectType ||
			left.parameters != right.parameters ||
			left.useAdvanced != right.useAdvanced ||
			left.textView != right.textView ||
			left.drawLocation != right.drawLocation
		)
	}
}

// A class that describes objects representing text objects
class TextObject : GraphObject {
	// NSTextView is a class that describes a text box object
	// It was used as it has predefined methods for drawing 
	var textView : NSTextView
	var drawLocation : CGPoint
	
	init() {
		textView = NSTextView.init()
		drawLocation = CGPoint(x: -1, y: -1)
		
		super.init(typeInp: GraphObjectsClass.textObjectID)
	}
}
