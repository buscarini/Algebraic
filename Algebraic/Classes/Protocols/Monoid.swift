//
//  Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public protocol Monoid: Semigroup {
	static func <>(left: Self, right: Self) -> Self
	static var empty: Self { get }
}
