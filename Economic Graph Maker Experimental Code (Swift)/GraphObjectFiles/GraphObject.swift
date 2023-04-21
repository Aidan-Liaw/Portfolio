//
//  GraphObject.swift
//  test3
//
//  Created by Aidan Liaw on 12/3/2022.
//

import Foundation

extension GraphObject {
	static func ==(left : GraphObject, right : GraphObject) -> Bool {
		if (left.objectType == right.objectType && left.objectType == GraphObjectsClass.penDrawObjectID) {
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

class GraphObject {
	var height : CGFloat
	var width : CGFloat
	var objectType : String
	var parameters : [String : AnyHashable]
	var useAdvanced : Bool
	
	init(typeInp : String) {
		height = 0;
		width = 0;
		objectType = typeInp
		parameters = [String : AnyHashable]()
		useAdvanced = false
	}
}
