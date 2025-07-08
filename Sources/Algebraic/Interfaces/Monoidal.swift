import Foundation

public protocol Monoidal: Semigroupal {
	static var monoid: Monoid<Self> { get }
}

extension Monoidal {
	func combine(_ other: Self) -> Self {
		Self.monoid.combine(self, other)
	}
	
	func combine(_ otherItems: Self...) -> Self {
		([self] + otherItems).reduced(Self.monoid)
	}
}

extension Monoidal {
	public static var semigroup: Semigroup<Self> {
		self.monoid.semigroup
	}
}
