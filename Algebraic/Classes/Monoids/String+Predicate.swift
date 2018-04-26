//
//  String+Predicate.swift
//  Algebraic
//
//  Created by José Manuel Sánchez Peñarroja on 26/4/18.
//

import Foundation

extension String {
	public var match: Predicate<String> {
	
		let upper = Endo<String> { $0.uppercased() }
		let trim = Endo<String> { $0.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) }
		let current = self
	
		let uppercased = Predicate<String> { search in
			let left: String = upper.value(current)
			let right: String = upper.value(search)
		
			return left.contains(right)
		}
		
		let trimmed = Predicate<String> { search in
			let process = trim <> upper
		
			let left = process.value(current)
			let right = process.value(search)

			return left.contains(right)
		}
	
		return uppercased <> trimmed
	}
}
