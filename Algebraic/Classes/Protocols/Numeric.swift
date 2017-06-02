//
//  Numeric.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public protocol Numeric: Equatable, Hashable, Comparable {
	static var zero: Self { get }
	static var one: Self { get }
	static func +(lhs: Self, rhs: Self) -> Self
	static func -(lhs: Self, rhs: Self) -> Self
	static func *(lhs: Self, rhs: Self) -> Self
	static func /(lhs: Self, rhs: Self) -> Self
}

extension Int: Numeric {
	public static var zero: Int { return 0 }
	public static var one: Int { return 1 }
}

extension Int64: Numeric {
	public static var zero: Int64 { return 0 }
	public static var one: Int64 { return 1 }
}

extension Int32: Numeric {
	public static var zero: Int32 { return 0 }
	public static var one: Int32 { return 1 }
}

extension Int16: Numeric {
	public static var zero: Int16 { return 0 }
	public static var one: Int16 { return 1 }
}

extension Int8: Numeric {
	public static var zero: Int8 { return 0 }
	public static var one: Int8 { return 1 }
}

extension UInt: Numeric {
	public static var zero: UInt { return 0 }
	public static var one: UInt { return 1 }
}

extension UInt64: Numeric {
	public static var zero: UInt64 { return 0 }
	public static var one: UInt64 { return 1 }
}

extension UInt32: Numeric {
	public static var zero: UInt32 { return 0 }
	public static var one: UInt32 { return 1 }
}

extension UInt16: Numeric {
	public static var zero: UInt16 { return 0 }
	public static var one: UInt16 { return 1 }
}

extension UInt8: Numeric {
	public static var zero: UInt8 { return 0 }
	public static var one: UInt8 { return 1 }
}

extension Double: Numeric {
	public static var zero: Double { return 0.0 }
	public static var one: Double { return 1.0 }
}

extension Float: Numeric {
	public static var zero: Float { return 0.0 }
	public static var one: Float { return 1.0 }
}

#if arch(x86_64) || arch(i386)
	extension Float80: Numeric {
  public static var zero: Float80 { return 0.0 }
  public static var one: Float80 { return 1.0 }
	}
#endif
