//
//  PointedCopointed+Functor.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

public func map<F: Copointed, G: Pointed>(_ box: F, _ f: (F.A) -> G.A) -> G {
	return G(f(box.value))
}

