import Foundation

extension Array {
	@inlinable
	public func filtered(by predicate: Predicate<Element>) -> Array {
		self.filter(predicate.value)
	}
}

