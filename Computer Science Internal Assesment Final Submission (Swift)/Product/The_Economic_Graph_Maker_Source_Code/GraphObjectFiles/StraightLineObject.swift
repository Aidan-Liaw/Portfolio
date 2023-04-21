//
//  straightLineObject.swift
//  test3
//
//

import Foundation

// The extension keyword implies that this code body extends the functionality of the StraightLineObject class
// In this scenario, it is adding functions that allow the StraightLineObject class to conform to Equatable through overloading the equality and inequality operators, which it must as StraightLineObject inherits this from its superclass, GraphObject
extension StraightLineObject {
	// Operator overloading the equality operator so that StraightLineObjects can be compared using the equality operator
	// "left" represents the object on the left side of the operator, and "right" represents the object on the right side of the operator
	// "-> Bool" means that this function will return a boolean variable
	static func ==(left : StraightLineObject, right : StraightLineObject) -> Bool {
		return (
			left.height == right.height &&
			left.width == right.width &&
			left.objectType == right.objectType &&
			left.parameters == right.parameters &&
			left.useAdvanced == right.useAdvanced &&
			left.startCoord == right.startCoord &&
			left.endCoord == right.endCoord &&
			left.equation == right.equation &&
			left.gradient == right.gradient &&
			left.yIntercept == right.yIntercept
		)
	}
	
	// Operator overloading the inequality operator so that StraightLineObjects can be compared using the equality operator
	static func !=(left : StraightLineObject, right : StraightLineObject) -> Bool {
		return (
			left.height != right.height ||
			left.width != right.width ||
			left.objectType != right.objectType ||
			left.parameters != right.parameters ||
			left.useAdvanced != right.useAdvanced ||
			left.startCoord != right.startCoord ||
			left.endCoord != right.endCoord ||
			left.equation != right.equation ||
			left.gradient != right.gradient ||
			left.yIntercept != right.yIntercept
		)
	}
}

// A class that describes objects representing straight lines
class StraightLineObject : GraphObject {
	var startCoord : CGPoint
	var endCoord : CGPoint
	var equation : String
	// A computed property, effectively a closure that can return values based on other variables during the point of call and be written data
	var gradient : CGFloat {
		// Runs when the variable is used
		get {
			if (self.startCoord != CGPoint(x: -1, y: -1) && self.endCoord != CGPoint(x: -1, y: -1) && (self.startCoord.x - self.endCoord.x) != 0) {
				return (self.startCoord.y - self.endCoord.y) / (self.startCoord.x - self.endCoord.x)
			} else { return CGFloat.infinity }
		// Sets the value of the property
		} set(newGradient) {
			self.gradient = newGradient
		}
	}
	// Another computed property
	var yIntercept : CGFloat {
		get {
			self.startCoord.y - (self.gradient * self.startCoord.x)
		} set (newYIntercept) {
			self.yIntercept = newYIntercept
		}
	}
	
	init() {
		startCoord = CGPoint(x: -1, y: -1)
		endCoord = CGPoint(x: -1, y: -1)
		equation = ""
		super.init(typeInp: GraphObjectsClass.straightLineObjectID)
	}
}
