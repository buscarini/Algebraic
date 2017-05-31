//
//  String+Monoid.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

extension String: Monoid {
	public static var empty: String {
		return ""
	}
	
	public static func <>(left: String, right: String) -> String {
		return left + right
	}
}
