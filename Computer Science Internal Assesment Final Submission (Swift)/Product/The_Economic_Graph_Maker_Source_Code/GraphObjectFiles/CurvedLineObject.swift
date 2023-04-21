//
//  curvedLineObject.swift
//  test3
//
//

import Foundation

// The extension keyword implies that this code body extends the functionality of the CurvedLineObject class
// In this scenario, it is adding functions that allow the CurvedLineObject class to conform to Equatable through overloading the equality and inequality operators, which it must as CurvedLineObject inherits this from its superclass, GraphObject
extension CurvedLineObject {
	// Operator overloading the equality operator so that CurvedLineObjects can be compared using the equality operator
	// "left" represents the object on the left side of the operator, and "right" represents the object on the right side of the operator
	// "-> Bool" means that this function will return a boolean variable
	static func ==(left : CurvedLineObject, right : CurvedLineObject) -> Bool {
		return (
			left.height == right.height &&
			left.width == right.width &&
			left.objectType == right.objectType &&
			left.parameters == right.parameters &&
			left.useAdvanced == right.useAdvanced &&
			left.bezierControlPoints == right.bezierControlPoints &&
			left.isCubic == right.isCubic
		)
	}
	
	// Operator overloading the inequality operator so thhat CurvedLineObjects can be compared using the equality operator
	static func !=(left : CurvedLineObject, right : CurvedLineObject) -> Bool {
		return (
			left.height != right.height ||
			left.width != right.width ||
			left.objectType != right.objectType ||
			left.parameters != right.parameters ||
			left.useAdvanced != right.useAdvanced ||
			left.bezierControlPoints != right.bezierControlPoints ||
			left.isCubic != right.isCubic
		)
	}
}

// A class that describes objects representing curved lines
class CurvedLineObject : GraphObject {
	// An array of bezier curve control points
	var bezierControlPoints : [CGPoint]
	// A variable to state whether the bezier curve is a cubic (thus true) or a quadratic (thus false)
	var isCubic : Bool
	
	init() {
		bezierControlPoints = [CGPoint]()
		isCubic = false
		super.init(typeInp: GraphObjectsClass.curvedLineObjectID)
	}
}
