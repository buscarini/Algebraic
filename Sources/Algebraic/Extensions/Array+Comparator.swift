import Foundation

extension Array {
	@inlinable
	public func sorted(by comparator: Comparator<Element>) -> Array {
		self.sorted { comparator.value(($0, $1)) == .lt }
	}
}

