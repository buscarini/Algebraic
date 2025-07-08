import Foundation

public struct Semiring<T> {
	public var zero: T
	public var one: T
	public var add: (T, T) -> T
	public var mult: (T, T) -> T
	
	public init(
		zero: T,
		one: T,
		add: @escaping (T, T) -> T,
		mult: @escaping (T, T) -> T
	) {
		self.zero = zero
		self.one = one
		self.add = add
		self.mult = mult
	}
}
