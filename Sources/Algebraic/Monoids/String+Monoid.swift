//
//  String+Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

extension String {
	public static var monoid: Monoid<String> {
		Monoid(
			empty: "",
			combine: { left, right in
				left + right
			}
		)
	}
}
