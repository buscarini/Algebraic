//
//  Optional+Max.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

// TODO: Implement this when possible in swift
//extension Optional: Monoid where Wrapped: Semigroup {
//
//	
//}

extension Optional: Monoid {
	public static var empty: Optional {
		return nil
	}
	
	public static func <> <W: Semigroup>(left: Optional<W>, right: Optional<W>) -> Optional<W> {
		switch (left, right) {
			case (nil, _):
				return right
			case (_, nil):
				return left
			
			case (.some(let leftVal), .some(let rightVal)):
				return leftVal <> rightVal
			
			default:
				fatalError("Compiler is dumb")
		}
	}
	
	// For optionals of non semigroups, it works like the First Monoid
	public static func <>(left: Optional, right: Optional) -> Optional {
		switch (left, right) {
			case (nil, _):
				return right
			case (_, nil):
				return left
			
			case (.some, .some):
				return left
			
			default:
				fatalError("Compiler is dumb")
		}
	}
}

