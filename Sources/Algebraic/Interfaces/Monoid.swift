import Foundation

public struct Monoid<T> {
	public var empty: T
	public var semigroup: Semigroup<T>
	
	public var combine: @Sendable (T, T) -> T {
		return semigroup.combine
	}
	
	public init(empty: T, semigroup: Semigroup<T>) {
		self.empty = empty
		self.semigroup = semigroup
	}
	
	public init(empty: T, combine: @escaping @Sendable (T, T) -> T) {
		self.init(empty: empty, semigroup: Semigroup<T>.init(combine: combine))
	}
}

extension Monoid {
	public func combine(_ items: T...) -> T {
		items.reduced(self)
	}
}

extension Monoid: Sendable where T: Sendable {}
