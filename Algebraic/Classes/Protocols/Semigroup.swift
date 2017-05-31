//
//  Semigroup.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

infix operator <>: AdditionPrecedence

// associative
public protocol Semigroup {
	static func <>(left: Self, right: Self) -> Self
}
