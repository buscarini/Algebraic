//
//  Longest.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

extension String {
	public static var longest: Semigroup<String> {
		Semigroup.max
	}
}


