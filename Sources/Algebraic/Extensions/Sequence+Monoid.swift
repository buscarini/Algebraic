import Foundation

extension Sequence {
	public func reduced(
		initial: Element,
		_ semigroup: Semigroup<Element>
	) -> Element {
		foldMap(id, initial: initial, semigroup)
	}
	
	public func reduced(
		_ monoid: Monoid<Element>
	) -> Element {
		foldMap(id, monoid)
	}
}

extension Sequence where Element: Semigroupal {
	public func reduced(initial: Element) -> Element {
		foldMap(id, initial: initial, Element.semigroup)
	}
}

extension Sequence where Element: Monoidal {
	public func reduced() -> Element {
		foldMap(id, Element.monoid)
	}
}
