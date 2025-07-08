import Foundation

public protocol Pointed {
	associatedtype A

	init(_ value: A)
}
