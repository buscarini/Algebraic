//
//  None.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public struct None: Pointed, Copointed {
	public let value: Bool
	public init(_ value: Bool) {
		self.value = value
	}
}

extension None: Monoid {
	public static var empty: None {
		return None(false)
	}
	
	public static func <>(left: None, right: None) -> None {
		return None(!left.value && !right.value)
	}
}

extension None: Hashable {
	public var hashValue: Int {
		return value.hashValue
	}
}

extension None: CustomStringConvertible {
	public var description: String {
		return "None(\(value))"
	}
}
