import Foundation

public extension Semigroup {
	static var last: Semigroup {
		.init(combine: { _, right in right })
	}
}
