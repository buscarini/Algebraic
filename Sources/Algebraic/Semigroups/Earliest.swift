//
//  Earliest.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 24/7/17.
//
//

import Foundation

extension Date {
	public static var earliest: Semigroup<Date> {
		Semigroup.min
	}
}
