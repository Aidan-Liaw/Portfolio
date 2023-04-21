//
//  GraphObjectsClass.swift
//  test3
//
//  Created by Aidan Liaw on 12/3/2022.
//

import Foundation


class GraphObjectsClass {
	static let penDrawObjectID : String = "penDrawObject"
	static let straightLineObjectID : String = "straightLineObject"
	static let curvedLineObjectID : String = "curvedLineObject"
	static let textObjectID : String = "textObject"
	static let customCurveObjectID : String = "customCurveObject"
	static let multiCurveCustomCurveID : String = "multiCurveCustomCurve"
	
	// typeDict
	struct GraphObjectType {
		let penDrawObjectID = PenDrawObject.self
		let straightLineObjectID = StraightLineObject.self
		let curvedLineObjectID = CurvedLineObject.self
		let textObjectID = TextObject.self
		let customCurveObjectID = CustomCurve.self
		let multiCurveCustomCurveID = MultiCurveCustomCurve.self
	}
}
