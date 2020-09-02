//
//  Monoidal.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 02/09/2020.
//

import Foundation

public protocol Monoidal {
	static var monoid: Monoid<Self> { get }
}
