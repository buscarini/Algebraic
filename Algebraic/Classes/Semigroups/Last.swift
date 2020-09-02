//
//  Last.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public extension Semigroup {
	static var last: Semigroup {
		.init(combine: { _, right in right })
	}
}
