//
//  Array+Predicate.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

extension Array {
	public func filtered(by predicate: Predicate<Element>) -> Array {
		return self.filter(predicate.value >>> { $0.value })
	}
}

