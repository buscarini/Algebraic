//
//  Longest.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

public struct Longest: Pointed, Copointed {
	public let value: String?
	public init(_ value: String?) {
		self.value = value
	}
}

extension Longest: Monoid {
	public static var empty: Longest {
		return Longest(nil)
	}
	
	public static func <>(left: Longest, right: Longest) -> Longest {
		switch (left.value, right.value) {
			case (nil, _):
				return right
			case (_, nil):
				return left
			case (.some(let string1), .some(let string2)):
				return string1.characters.count < string2.characters.count ? right : left
			
			default:
				fatalError("Compiler is dumb")
		}
	}
}

extension Longest: Equatable {
	public static func == (left: Longest, right: Longest) -> Bool {
		return left.value == right.value
	}
}

extension Longest: Hashable {
	public var hashValue: Int {
		return value?.hashValue ?? 0
	}
}

extension Longest: CustomStringConvertible {
	public var description: String {
		return "Longest(\(String(describing: value)))"
	}
}


