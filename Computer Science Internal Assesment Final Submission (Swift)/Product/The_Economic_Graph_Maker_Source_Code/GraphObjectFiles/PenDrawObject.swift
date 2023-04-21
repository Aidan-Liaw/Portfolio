//
//  penDrawObject.swift
//  test3
//
//

import Foundation

// The extension keyword implies that this code body extends the functionality of the PenDrawObject class
// In this scenario, it is adding functions that allow the PenDrawObject class to conform to Equatable through overloading the equality and inequality operators, which it must as PenDrawObject inherits this from its superclass, GraphObject
extension PenDrawObject {
	// Operator overloading the equality operator so thhat PenDrawObjects can be compared using the equality operator
	// "left" represents the object on the left side of the operator, and "right" represents the object on the right side of the operator
	// "-> Bool" means that this function will return a boolean variable
	static func ==(left : PenDrawObject, right : PenDrawObject) -> Bool {
		return (
			left.height == right.height &&
			left.width == right.width &&
			left.objectType == right.objectType &&
			left.parameters == right.parameters &&
			left.useAdvanced == right.useAdvanced &&
			left.penDrawPoints == right.penDrawPoints
		)
	}
	
	// Operator overloading the inequality operator so thhat PenDrawObjects can be compared using the inequality operator
	static func !=(left : PenDrawObject, right : PenDrawObject) -> Bool {
		return (
			left.height != right.height ||
			left.width != right.width ||
			left.objectType != right.objectType ||
			left.parameters != right.parameters ||
			left.useAdvanced != right.useAdvanced ||
			left.penDrawPoints != right.penDrawPoints
		)
	}
}

// A class that describes objects representing pen drawing
class PenDrawObject : GraphObject {
	// An array of points
	// CGPoint is effectively a struct holding an x-coordinate and a y-coordinate
	var penDrawPoints : [CGPoint]
	
	// The initialiser of the PenDrawObject
	init() {
		// Writes an empty CGPoint array to the variable
		penDrawPoints =  [CGPoint]()
		// Invokes the initaliser of the superclass, thus initalising the variables of the superclass
		// As this is a parameterised constructor, the type of the object is parsed into the superclass initaliser
		// So that the type of the object is known from initialisation
		super.init(typeInp: GraphObjectsClass.penDrawObjectID)
	}
}
