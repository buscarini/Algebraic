import Foundation

public protocol Semigroupal {
	static var semigroup: Semigroup<Self> { get }
}

extension Semigroupal {
	func combine(_ other: Self) -> Self {
		Self.semigroup.combine(self, other)
	}
	
	func combine(first: Self, _ otherItems: Self...) -> Self {
		otherItems.reduced(first, Self.semigroup)
	}
}
