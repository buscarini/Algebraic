import Foundation

extension Monoid {
	public static func `func`<B>(_ mon: Monoid<B>) -> Monoid<(T) -> B> {
		let empty = mon.empty
		let combine = mon.combine
		return Monoid<(T) -> B>(
			empty: { _ in
				empty
			}
		) { f, g in
			{ a in
				combine(f(a), g(a))
			}
		}
	}
}
