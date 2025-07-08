import Foundation

public extension Semigroup {
	static var first: Semigroup {
		.init(combine: { left, _ in left })
	}
}
