//
//  Pointed.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public protocol Pointed {
	associatedtype A

	init(_ value: A)
}
