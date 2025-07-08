import Foundation

extension Array: Monoidal {
	public static var monoid: Monoid<Array> {
		Monoid(
			empty: [],
			combine: { left, right in
				left + right
			}
		)
	}
}
