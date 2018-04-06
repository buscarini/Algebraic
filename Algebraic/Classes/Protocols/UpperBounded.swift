//
//  UpperBounded.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

public protocol UpperBounded {
	static var maxValue: Self { get }
}

extension Character: UpperBounded {	
	public static var maxValue: Character {
		return "\u{FFFFF}"
	}
}

extension UInt: UpperBounded {	
	public static var maxValue: UInt {
		return UInt.max
	}
}

extension UInt8: UpperBounded {	
	public static var maxValue: UInt8 {
		return UInt8.max
	}
}

extension UInt16: UpperBounded {	
	public static var maxValue: UInt16 {
		return UInt16.max
	}
}


extension UInt32: UpperBounded {	
	public static var maxValue: UInt32 {
		return UInt32.max
	}
}


extension UInt64: UpperBounded {	
	public static var maxValue: UInt64 {
		return UInt64.max
	}
}

extension Int: UpperBounded {	
	public static var maxValue: Int {
		return Int.max
	}
}

extension Int8: UpperBounded {	
	public static var maxValue: Int8 {
		return Int8.max
	}
}

extension Int16: UpperBounded {	
	public static var maxValue: Int16 {
		return Int16.max
	}
}


extension Int32: UpperBounded {	
	public static var maxValue: Int32 {
		return Int32.max
	}
}


extension Int64: UpperBounded {	
	public static var maxValue: Int64 {
		return Int64.max
	}
}

extension Float: UpperBounded {	
	public static var maxValue: Float {
		return Float.greatestFiniteMagnitude
	}
}

extension Double: UpperBounded {	
	public static var maxValue: Double {
		return Double.greatestFiniteMagnitude
	}
}


