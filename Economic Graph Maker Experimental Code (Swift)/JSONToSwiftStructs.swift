//
//  preset.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 1/6/2022.
//

import Foundation

struct graphPreset : Codable {
	var DOCTYPE : String?
	var presets : [preset]?
	var variables : [variable]?
	var equations : [equation]?
}

struct preset : Codable {
	var name : String?
	var equation : String?
	var eqType  : String?
	var constants : [String : Float]?
	var variables : [String]?
	var isX : term?
	var isY : term?

	var isPiecewise : Bool? = false
}

struct term : Codable {
	var coefficient : Float?
	var variable : variable?
	var constant : Float?
}

struct variable : Codable {
	var name : String?
	var defaultValue : Float?
	var lowerRange : Float?
	var upperRange : Float?
	var rangeVar : NSRange?

	var advLowerRange : Float?
	var advUpperRange : Float?
	var advRangeVar : NSRange?
	
	var useCSlider : Bool?
}

struct equation : Codable {
	var equation : String?
	var eqType  : String?
	var lowerRange : Float?
	var upperRange : Float?
	var rangeVar : NSRange?
}
