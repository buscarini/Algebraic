import Foundation

public struct FuncM<A, M> {
	public let value: (A) -> M
	public init(_ value: @escaping (A) -> M) {
		self.value = value
	}
	
	public func callAsFunction(
		_ input: A
	) -> M {
		value(input)
	}
}

extension FuncM {
	public static func monoid(
		_ m: Monoid<M>
	) -> Monoid<FuncM> {
		let combine = m.combine
		return Monoid(empty: FuncM { _ in m.empty }) { left, right in
			FuncM { combine(left.value($0), right.value($0)) }
		}
	}
}

// MARK: Contravariant Functor
extension FuncM {
	func contramap<B>(_ f: @escaping (B) -> A) -> FuncM<B, M> {
		FuncM<B, M>(f >>> self.value)
	}
}

extension FuncM: CustomStringConvertible {
	public var description: String {
		"FuncM"
	}
}

