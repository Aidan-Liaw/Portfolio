//
//  MultiCurveCustomCurve.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 29/5/2022.
//

import Foundation

class MultiCurveCustomCurve : GraphObject {
	var curveName : String
	var customCurves : [CustomCurve]
	var curveRanges : [CustomCurve : NSRange]
	var advancedCurveRanges : [CustomCurve : NSRange]
	
	
	
	init() {
		curveName = ""
		customCurves = [CustomCurve]()
		curveRanges = [CustomCurve : NSRange]()
		advancedCurveRanges = [CustomCurve : NSRange]()

		
		super.init(typeInp: GraphObjectsClass.multiCurveCustomCurveID)
	}
}
