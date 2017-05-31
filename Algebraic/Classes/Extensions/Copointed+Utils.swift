//
//  Copointed+Utils.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public func == <P: Copointed>(left: P, right: P) -> Bool where P.A: Equatable {
	return left.value == right.value
}

public func < <P: Copointed> (left: P,right: P) -> Bool where P.A: Comparable {
	return left.value < right.value
}

