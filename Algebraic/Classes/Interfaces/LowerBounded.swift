//
//  LowerBounded.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

public protocol LowerBounded {
	static var minValue: Self { get }
}

extension Character: LowerBounded {
	public static var minValue: Character {
		return "\0"
	}
}

extension String: LowerBounded {
	public static var minValue: String {
		return ""
	}
}

extension UInt: LowerBounded {
	public static var minValue: UInt {
		return UInt.min
	}
}

extension UInt8: LowerBounded {
	public static var minValue: UInt8 {
		return UInt8.min
	}
}

extension UInt16: LowerBounded {
	public static var minValue: UInt16 {
		return UInt16.min
	}
}


extension UInt32: LowerBounded {
	public static var minValue: UInt32 {
		return UInt32.min
	}
}


extension UInt64: LowerBounded {
	public static var minValue: UInt64 {
		return UInt64.min
	}
}

extension Int: LowerBounded {
	public static var minValue: Int {
		return Int.min
	}
}

extension Int8: LowerBounded {
	public static var minValue: Int8 {
		return Int8.min
	}
}

extension Int16: LowerBounded {
	public static var minValue: Int16 {
		return Int16.min
	}
}


extension Int32: LowerBounded {
	public static var minValue: Int32 {
		return Int32.min
	}
}


extension Int64: LowerBounded {
	public static var minValue: Int64 {
		return Int64.min
	}
}

extension Float: LowerBounded {
	public static var minValue: Float {
		return -Float.greatestFiniteMagnitude
	}
}

extension Double: LowerBounded {
	public static var minValue: Double {
		return Double.greatestFiniteMagnitude
	}
}

