import Foundation

extension Optional {
	public static func monoid(
		_ s: Semigroup<Wrapped>
	) -> Monoid<Optional> {
		let combine = s.combine
		return Monoid(
			empty: nil,
			combine: { left, right in
				zip(left, right).map(combine)
			}
		)
	}
}

