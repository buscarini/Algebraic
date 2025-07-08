import Foundation

extension Dictionary {
	public static func monoid(
		_ semigroup: Semigroup<Value>
	) -> Monoid<Dictionary> {
		let combine = semigroup.combine
		
		return Monoid(
			empty: [:]
		) { left, right in
			left.merging(right, uniquingKeysWith: combine)
		}
	}
	
	public static var first: Monoid<Dictionary> {
		self.monoid(.first)
	}
}
