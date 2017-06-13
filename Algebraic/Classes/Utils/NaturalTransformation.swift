//
//  NaturalTransformation.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 8/6/17.
//

import Foundation

public typealias NatTransformMonoid = Monoid & Pointed & Copointed

// Uncomment when it doesn't crash the compiler
//public func transform<M1: NatTransformMonoid, M2: NatTransformMonoid>(_ a: M1) -> M2 where M1.A == M2.A {
//	return M2(a.value)
//}


