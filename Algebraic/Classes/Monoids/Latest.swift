//
//  Latest.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

public struct Latest: Pointed, Copointed {
	public let value: Date?
	public init(_ value: Date?) {
		self.value = value
	}
}

extension Latest: Monoid {
	public static var empty: Latest {
		return Latest(nil)
	}
	
	public static func <>(left: Latest, right: Latest) -> Latest {
		switch (left.value, right.value) {
			case (nil, _):
				return right
			case (_, nil):
				return left
			case (.some(let date1), .some(let date2)):
				return date1 > date2 ? left : right
			
			default:
				fatalError("Compiler is dumb")
		}
	}
}

extension Latest: Equatable {
	public static func == (left: Latest, right: Latest) -> Bool {
		return left.value == right.value
	}
}

extension Latest: Hashable {
	public var hashValue: Int {
		return value?.hashValue ?? 0
	}
}

extension Latest: CustomStringConvertible {
	public var description: String {
		return "Latest(\(String(describing: value)))"
	}
}


