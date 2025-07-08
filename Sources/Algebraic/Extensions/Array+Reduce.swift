import Foundation

actor Wrapper<T> {
	var value: T
	
	init(_ value: T) {
		self.value = value
	}
	
	func update(_ newValue: T) {
		value = newValue
	}
}

