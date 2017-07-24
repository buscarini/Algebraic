//
//  Earliest.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

public struct Earliest: Pointed, Copointed {
	public let value: Date?
	public init(_ value: Date?) {
		self.value = value
	}
}

extension Earliest: Monoid {
	public static var empty: Earliest {
		return Earliest(nil)
	}
	
	public static func <>(left: Earliest, right: Earliest) -> Earliest {
		switch (left.value, right.value) {
			case (nil, _):
				return right
			case (_, nil):
				return left
			case (.some(let date1), .some(let date2)):
				return date1 < date2 ? left : right
			
			default:
				fatalError("Compiler is dumb")
		}
	}
}

extension Earliest: Equatable {
	public static func == (left: Earliest, right: Earliest) -> Bool {
		return left.value == right.value
	}
}

extension Earliest: Hashable {
	public var hashValue: Int {
		return value?.hashValue ?? 0
	}
}

extension Earliest: CustomStringConvertible {
	public var description: String {
		return "Earliest(\(String(describing: value)))"
	}
}


