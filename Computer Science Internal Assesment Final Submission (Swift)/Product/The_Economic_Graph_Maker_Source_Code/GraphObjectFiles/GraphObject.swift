//
//  GraphObject.swift
//  test3
//
//

import Foundation

// The extension keyword implies that this code body extends the functionality of the GraphObject class
// This extension states that GraphObjects conforms to the Equatable protocol, allowing it to use the equality and inequality operator. This protocol inheritance is passed down to subclasses of GraphObject, forcing them to conform to the Equatable protocol as well
extension GraphObject : Equatable {
	// Operator overloading the equality operator so that GraphObjects can be compared using the equality operator
	// "left" represents the object on the left side of the operator, and "right" represents the object on the right side of the operator
	// "-> Bool" means that this function will return a boolean variable
	static func ==(left : GraphObject, right : GraphObject) -> Bool {
		// These if statements are meant to call equality functions that do further equality checks on specific attributes of two given graph objects, which is important when the graph objects being compared have not been downcasted to their specific graph types
		if (left.objectType == right.objectType && left.objectType == GraphObjectsClass.penDrawObjectID) {
			// As the type of the two graph objects used with the equality operator are the same, they are both force downcasted to the same graph object class so that further equality check can occur with the specific variables found within the different graph object, as operator overloading has occured for those graph object types as well, and by downcasting both of the objects to the same graph object class, the operator operations associated with the equality operator for that specific graph object can occur
			return ((left as! PenDrawObject) == (right as! PenDrawObject))
			
		} else if (left.objectType == right.objectType && left.objectType == GraphObjectsClass.straightLineObjectID) {
			return ((left as! StraightLineObject) == (right as! StraightLineObject))
			
		} else if (left.objectType == right.objectType && left.objectType == GraphObjectsClass.curvedLineObjectID) {
			return ((left as! CurvedLineObject) == (right as! CurvedLineObject))
			
		} else if (left.objectType == right.objectType && left.objectType == GraphObjectsClass.textObjectID) {
			return ((left as! TextObject) == (right as! TextObject))
			
		} else {
			return (
				left.height == right.height &&
				left.width == right.width &&
				left.objectType == right.objectType &&
				left.parameters == right.parameters &&
				left.useAdvanced == right.useAdvanced
			)
		}
	}
	
	// Operator overloading the inequality operator so that GraphObjects can be compared using the equality operator
	static func !=(left : GraphObject, right : GraphObject) -> Bool {
		// These if statements are meant to call inequality functions that do further inequality checks on specific attributes of two given graph objects, which is important when the graph objects being compared have not been downcasted to their specific graph types
		if (left.objectType == right.objectType && left.objectType == GraphObjectsClass.penDrawObjectID) {
			// As the type of the two graph objects used with the inequality operator are the same, they are both force downcasted to the same graph object class so that further inequality check can occur with the specific variables found within the different graph object, as operator overloading has occured for those graph object types as well, and by downcasting both of the objects to the same graph object class, the operator operations associated with the inequality operator for that specific graph object can occur
			return ((left as! PenDrawObject) != (right as! PenDrawObject))
			
		} else if (left.objectType == right.objectType && left.objectType == GraphObjectsClass.straightLineObjectID) {
			return ((left as! StraightLineObject) != (right as! StraightLineObject))
			
		} else if (left.objectType == right.objectType && left.objectType == GraphObjectsClass.curvedLineObjectID) {
			return ((left as! CurvedLineObject) != (right as! CurvedLineObject))
			
		} else if (left.objectType == right.objectType && left.objectType == GraphObjectsClass.textObjectID) {
			return ((left as! TextObject) != (right as! TextObject))
			
		} else {
			return (
				left.height != right.height ||
				left.width != right.width ||
				left.objectType != right.objectType ||
				left.parameters != right.parameters ||
				left.useAdvanced != right.useAdvanced
			)
		}
	}
}

// A class that serves as a blueprint for graph objects that are to be drawn
class GraphObject {
	// CGFloat is a Core Graphics Float that changes in byte size based on whether the code runs on a 64bit device or a 32bit device. It is a legacy data type that is used so that during runtime, when used by Core Graphics functions, the variables do not need to be converted to CGFloat, unlike other floating-point data types
	// This is because CGFloat does not support toll-free bridging, meaning that it is not a typealias or identifier for a different data type, and as such when another data type is subsituted when CGFloat is expected, conversion from that floating-point data type to CGFloat must occur
	var height : CGFloat
	var width : CGFloat
	var objectType : String
	// A dictionary of parameters, where key values are Strings, and value values can be any data type or object, so long as the type or object conforms to the Hashable protocol, which is required in order to use Swift dictionaries, which internally are akin to Java HashMaps
	// The postfix "Any" implies that any data type can be used as a value in a key-valye pair, so long as it is hashable
	var parameters : [String : AnyHashable]
	var useAdvanced : Bool
	
	// As all graph objects are to have a type associated with it, a non-parameterised constructor is the only constructor present
	// If a placeholder object is needed, the type is set to ""
	// The left side of the colon is the label that must be used when the function is called, to make it explicitly clear to programmers that they are parsing in the type of the graph object
	// The right side of the colon is the data type that must be parsed
	init(typeInp : String) {
		height = 0;
		width = 0;
		objectType = typeInp
		parameters = [String : AnyHashable]()
		useAdvanced = false
	}
}
