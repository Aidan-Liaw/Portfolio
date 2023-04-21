//
//  BidirectionDictionary.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 7/6/2022.
//

import Foundation

struct BidirectionDictionary<Key, Value> where Key : Hashable, Value : Hashable {
	
	var KVDict : [Key : Value]? = nil
	
	var VKDict : [Value : Key]? = nil
	
	var keyArray : [Key]? = nil
	var keyIndex : Int = 0
	
	subscript(inputKey : Key) -> Value? {
		get {
			if (type(of: Key.self) == type(of: Value.self)) { assertionFailure() }

			if (KVDict == nil || KVDict!.isEmpty) {
				return nil
			} else {
				return KVDict![inputKey]
			}
		} set(newValue) {
			if (type(of: Key.self) == type(of: Value.self)) { assertionFailure() }

			if (self.KVDict == nil) { self.KVDict = [Key : Value](); self.VKDict = [Value : Key]()  }

			if (newValue != nil) { self.KVDict![inputKey] = newValue; self.VKDict![newValue!] = inputKey }
		}
	}

	subscript(inputValue : Value) -> Key? {
		get {
			if (type(of: Key.self) == type(of: Value.self)) { assertionFailure() }

			if (VKDict == nil || VKDict!.isEmpty) {
				return nil
			} else {
				return VKDict![inputValue]
			}
		} set(newKey) {
			if (type(of: Key.self) == type(of: Value.self)) { assertionFailure() }

			if (self.VKDict == nil) { self.VKDict = [Value : Key](); self.KVDict = [Key : Value]()  }

			if (newKey != nil) { self.VKDict![inputValue] = newKey; self.KVDict![newKey!] = inputValue }
		}
	}
}

extension BidirectionDictionary where Key : Equatable, Value : Equatable {
	static func ==(lhs : BidirectionDictionary, rhs: BidirectionDictionary) -> Bool {
		return (lhs.VKDict == rhs.VKDict && lhs.KVDict == rhs.KVDict)
	}
	
	static func !=(lhs : BidirectionDictionary, rhs: BidirectionDictionary) -> Bool {
		return (lhs.VKDict != rhs.VKDict || lhs.KVDict != rhs.KVDict)
	}
}

extension BidirectionDictionary : Hashable {
	func hash(into hasher: inout Hasher) -> Int {
		var hasher = Hasher()
		hasher.combine(KVDict)
		hasher.combine(VKDict)
		return hasher.finalize()
	}
}

extension BidirectionDictionary : ExpressibleByDictionaryLiteral {
	init(dictionaryLiteral elements: (Key, Value)...) {
		self.KVDict = [Key : Value]()
		self.VKDict = [Value : Key]()
		
		for (Key, Value) in elements {
			KVDict![Key] = Value
			VKDict![Value] = Key
		}
	}
}

extension BidirectionDictionary where Key == Value {
	dynamic subscript(key inputKey : Key) -> Value? {
		get {
			if (KVDict == nil || KVDict!.isEmpty) {
				return nil
			} else {
				return KVDict![inputKey]
			}
		} set(newValue) {
			if (self.KVDict == nil) { self.KVDict = [Key : Value](); self.VKDict = [Value : Key]()  }

			if (newValue != nil) { self.KVDict![inputKey] = newValue; self.VKDict![newValue!] = inputKey }
		}
	}

	dynamic subscript(value inputValue : Value) -> Key? {
		get {
			if (VKDict == nil || VKDict!.isEmpty) {
				return nil
			} else {
				return VKDict![inputValue]
			}
		} set(newKey) {
			if (self.VKDict == nil) { self.VKDict = [Value : Key](); self.KVDict = [Key : Value]()  }

			if (newKey != nil) { self.VKDict![inputValue] = newKey; self.KVDict![newKey!] = inputValue }
		}
	}
}
