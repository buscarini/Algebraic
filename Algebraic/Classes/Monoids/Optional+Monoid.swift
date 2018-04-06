//
//  Optional+Max.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

extension Optional: Monoid where Wrapped: Semigroup {
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
		}
	}
}

