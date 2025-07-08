import Foundation

extension Semigroup where T: Comparable {
	public static var max: Semigroup {
		Semigroup { left, right in
			Swift.max(left, right)
		}
	}
}

extension Monoid where T: Comparable & LowerBounded {
	public static var max: Monoid {
		Monoid(
			empty: T.minValue,
			semigroup: Semigroup<T>.max
		)
	}
}
